#' Runs RCTD in doublet mode on \code{puck}
#'
#' Then, computes cell type proportions for each pixel in \code{puck}.
#' Classifies each pixel as 'singlet' or 'doublet' and searches for the cell
#' types on the pixel
#'
#' @param class_df A dataframe mapping cell types to classes
#' @param gene_list a list of genes to be used for RCTD
#' @param puck an object of type \linkS4class{SpatialRNA}, the target dataset
#' @param cell_type_info cell type information and profiles of each cell,
#'   calculated from the scRNA-seq reference (see
#'   \code{\link{get_cell_type_info}})
#' @param constrain logical whether to constrain the weights to sum to one on
#'   each pixel
#' @param MAX_CORES number of cores to use (will use parallel processing if more
#'   than one).
#' @param CONFIDENCE_THRESHOLD (Default 10) the minimum change in likelihood
#'   (compared to other cell types) necessary to determine a cell type identity
#'   with confidence
#' @param MIN.CHANGE (default 0.001) the minimum change in the norm of the WLS
#'   solution used to determine the cell type proportions
#' @param DOUBLET_THRESHOLD (Default 25) the penalty weight of predicting a
#'   doublet instead of a singlet for a pixel
#' @return Returns \code{results}, a list of RCTD results for each pixel, which
#'   can be organized by feeding into \code{\link{create_spe_doublet}}
#' @keywords internal
process_beads_batch <- function(
    cell_type_info, gene_list, puck, class_df = NULL, constrain = TRUE,
    MAX_CORES = 8, MIN.CHANGE = 0.001, CONFIDENCE_THRESHOLD = 10,
    DOUBLET_THRESHOLD = 25
) {
    beads <- t(as.matrix(counts(puck)[gene_list, ]))
    if (MAX_CORES > 1) {
        numCores <- parallel::detectCores()
        if (parallel::detectCores() > MAX_CORES) {
            numCores <- MAX_CORES
        }
        BiocParallel::register(BiocParallel::MulticoreParam(numCores))
        results <- BiocParallel::bplapply(seq_len(dim(beads)[1]), function(i) {
            process_bead_doublet(
                cell_type_info, gene_list, nUMI(puck)[i], beads[i, ],
                class_df = class_df, constrain = constrain,
                MIN.CHANGE = MIN.CHANGE,
                CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
                DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
            )
        })
    } else {
        # not parallel
        results <- list()
        for (i in seq_len(dim(beads)[1])) {
            results[[i]] <- process_bead_doublet(
                cell_type_info, gene_list, nUMI(puck)[i], beads[i, ],
                class_df = class_df, constrain = constrain,
                MIN.CHANGE = MIN.CHANGE,
                CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
                DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
            )
        }
    }
    return(results)
}

process_beads_multi <- function(
    cell_type_info, gene_list, puck, class_df = NULL, constrain = TRUE,
    MAX_CORES = 8, MIN.CHANGE = 0.001, MAX.TYPES = 4, CONFIDENCE_THRESHOLD = 10,
    DOUBLET_THRESHOLD = 25
) {
    beads <- t(as.matrix(counts(puck)[gene_list, ]))
    if (MAX_CORES > 1) {
        numCores <- parallel::detectCores()
        if (parallel::detectCores() > MAX_CORES) {
            numCores <- MAX_CORES
        }
        BiocParallel::register(BiocParallel::MulticoreParam(numCores))
        results <- BiocParallel::bplapply(seq_len(dim(beads)[1]), function(i) {
            process_bead_multi(
                cell_type_info, gene_list, nUMI(puck)[i], beads[i, ],
                class_df = class_df, constrain = constrain,
                MIN.CHANGE = MIN.CHANGE, MAX.TYPES = MAX.TYPES,
                CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
                DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
            )
        })
    } else {
        # not parallel
        results <- list()
        for (i in seq_len(dim(beads)[1])) {
            results[[i]] <- process_bead_multi(
                cell_type_info, gene_list, nUMI(puck)[i], beads[i, ],
                class_df = class_df, constrain = constrain,
                MIN.CHANGE = MIN.CHANGE, MAX.TYPES = MAX.TYPES,
                CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
                DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
            )
        }
    }
    return(results)
}

#' Runs the RCTD algorithm
#'
#' If in doublet mode, fits at most two cell types per pixel. It classifies each
#' pixel as 'singlet' or 'doublet' and searches for the cell types on the pixel.
#' If in full mode, can fit any number of cell types on each pixel. In multi
#' mode, cell types are added using a greedy algorithm, up to a fixed number.
#'
#' @param RCTD an \code{\linkS4class{RctdConfig}} object after running the
#'   \code{\link{choose_sigma_c}} function.
#' @param rctd_mode \code{character string}, either "doublet", "multi", or
#'   "full" on which mode to run RCTD. Please see above description.
#' @return a \code{SpatialExperiment} object containing the results of the RCTD
#'   algorithm.
#' @export
#' @keywords internal
#' @examples
#' data(rctdSim)
#'
#' # Spatial transcriptomics data
#' library(SpatialExperiment)
#' spatial_spe <- SpatialExperiment(
#'     assay = rctdSim$spatial_rna_counts,
#'     spatialCoords = rctdSim$spatial_rna_coords
#' )
#'
#' # Reference data
#' library(SummarizedExperiment)
#' reference_se <- SummarizedExperiment(
#'     assays = list(counts = rctdSim$reference_counts),
#'     colData = rctdSim$reference_cell_types
#' )
#'
#' # Create RCTD configuration
#' rctd <- createRctd(spatial_spe, reference_se, max_cores = 1)
#' rctd <- fitBulk(rctd)
#' rctd <- choose_sigma_c(rctd)
#' results <- fitPixels(rctd, rctd_mode = "doublet")
#'
fitPixels <- function(RCTD, rctd_mode) {
    internal_vars(RCTD)$cell_types_assigned <- TRUE
    set_likelihood_vars(internal_vars(RCTD)$Q_mat, internal_vars(RCTD)$X_vals)
    cell_type_info <- cell_type_info(RCTD)$renorm
    if (rctd_mode == "doublet") {
        # Doublet mode
        results <- process_beads_batch(
            cell_type_info, internal_vars(RCTD)$gene_list_reg, spatialRNA(RCTD),
            class_df = internal_vars(RCTD)$class_df,
            constrain = FALSE, MAX_CORES = config(RCTD)$max_cores,
            MIN.CHANGE = config(RCTD)$MIN_CHANGE_REG,
            CONFIDENCE_THRESHOLD = config(RCTD)$CONFIDENCE_THRESHOLD,
            DOUBLET_THRESHOLD = config(RCTD)$DOUBLET_THRESHOLD
        )
        return(create_spe_doublet(RCTD, results))
    } else if (rctd_mode == "full") {
        # Full mode
        beads <- t(as.matrix(
            counts(spatialRNA(RCTD))[internal_vars(RCTD)$gene_list_reg, ]
        ))
        results <- decompose_batch(
            nUMI(spatialRNA(RCTD)), cell_type_info[[1]], beads,
            internal_vars(RCTD)$gene_list_reg, constrain = FALSE,
            max_cores = config(RCTD)$max_cores,
            MIN.CHANGE = config(RCTD)$MIN_CHANGE_REG
        )
        return(create_spe_full(RCTD, results))
    } else {
        # Multi mode
        results <- process_beads_multi(
            cell_type_info, internal_vars(RCTD)$gene_list_reg, spatialRNA(RCTD),
            class_df = internal_vars(RCTD)$class_df, constrain = FALSE,
            MAX_CORES = config(RCTD)$max_cores,
            MIN.CHANGE = config(RCTD)$MIN_CHANGE_REG,
            MAX.TYPES = config(RCTD)$MAX_MULTI_TYPES,
            CONFIDENCE_THRESHOLD = config(RCTD)$CONFIDENCE_THRESHOLD,
            DOUBLET_THRESHOLD = config(RCTD)$DOUBLET_THRESHOLD
        )
        return(create_spe_multi(RCTD, results))
    }
}

decompose_batch <- function(
    nUMI, cell_type_means, beads, gene_list, constrain = TRUE, OLS = FALSE,
    max_cores = 8, MIN.CHANGE = 0.001
) {
    if (max_cores > 1) {
        numCores <- parallel::detectCores()
        if (parallel::detectCores() > max_cores) {
            numCores <- max_cores
        }
        BiocParallel::register(BiocParallel::MulticoreParam(numCores))
        weights <- BiocParallel::bplapply(seq_len(dim(beads)[1]), function(i) {
            decompose_full(
                data.matrix(cell_type_means[gene_list, ] * nUMI[i]), nUMI[i],
                beads[i, ], constrain = constrain, OLS = OLS,
                MIN_CHANGE = MIN.CHANGE
            )
        })
    } else {
        weights <- list()
        for (i in seq_len(dim(beads)[1])) {
            weights[[i]] <- decompose_full(
                data.matrix(cell_type_means[gene_list, ] * nUMI[i]), nUMI[i],
                beads[i, ], constrain = constrain, OLS = OLS,
                MIN_CHANGE = MIN.CHANGE
            )
        }
    }
    return(weights)
}
