process_cell_type_info <- function(reference, cell_type_names, CELL_MIN = 25) {
    message("Begin: process_cell_type_info")
    message(
        "process_cell_type_info: number of cells in reference: ",
        dim(reference@counts)[2]
    )
    message(
        "process_cell_type_info: number of genes in reference: ",
        dim(reference@counts)[1]
    )
    cell_counts <- table(reference@cell_types)
    message(cell_counts)

    if (min(cell_counts) < CELL_MIN) {
        stop(
            "process_cell_type_info: need a minimum of ", CELL_MIN,
            " cells for each cell type in the reference"
        )
    }
    cell_type_info <- get_cell_type_info(
        reference@counts,
        reference@cell_types,
        reference@nUMI,
        cell_type_names = cell_type_names
    )
    message("End: process_cell_type_info")
    return(cell_type_info)
}

#' \code{\linkS4class{RCTD}} object constructor
#'
#' Creates an RCTD configuration from a spatial transcriptomics dataset and a
#' reference dataset. This function performs initial preprocessing steps,
#' including identifying differentially expressed genes and normalizing for
#' platform effects. Users should subsequently pass this object to
#' \code{\link{run.RCTD}}.
#'
#' @param spatialRNA a \code{\linkS4class{SpatialRNA}} object containing spatial
#'   transcriptomics data
#' @param reference a \code{\linkS4class{Reference}} object containing reference
#'   RNA-seq data
#' @param max_cores numeric, maximum number of cores to use for parallel
#'   processing (default: 4)
#' @param test_mode logical, whether to run in test mode with reduced
#'   computation (default: FALSE)
#' @param gene_cutoff numeric, minimum normalized gene expression for genes to
#'   be included in the platform effect normalization step (default: 0.000125)
#' @param fc_cutoff numeric, minimum log-fold-change (across cell types) for
#'   genes to be included in the platform effect normalization step (default:
#'   0.5)
#' @param gene_cutoff_reg numeric, minimum normalized gene expression for genes
#'   to be included in the RCTD step (default: 0.0002)
#' @param fc_cutoff_reg numeric, minimum log-fold-change (across cell types) for
#'   genes to be included in the RCTD step (default: 0.75)
#' @param UMI_min numeric, minimum UMI count per pixel (default: 100)
#' @param UMI_max numeric, maximum UMI count per pixel (default: 20000000)
#' @param counts_MIN numeric, minimum total counts per pixel of genes used in
#'   analysis (default: 10)
#' @param UMI_min_sigma numeric, minimum UMI count for pixels used in platform
#'   effect normalization (default: 300)
#' @param class_df data frame mapping cell types to classes, optional. If
#'   specified, RCTD will report confidence on the class level.
#' @param CELL_MIN_INSTANCE numeric, minimum number of cells required per cell
#'   type (default: 25)
#' @param cell_type_names character vector of cell type names to include,
#'   optional
#' @param MAX_MULTI_TYPES numeric, maximum number of cell types per pixel in
#'   multi mode (default: 4)
#' @param keep_reference logical, whether to retain the full reference data in
#'   the output object (default: FALSE)
#' @param cell_type_profiles matrix of precomputed cell type expression profiles
#'   (genes by cell type), optional. If this option is used, gene names and cell
#'   type names must be present in the profiles, and the reference will be
#'   ignored.
#' @param CONFIDENCE_THRESHOLD numeric, minimum change in likelihood (compared
#'   to other cell types) necessary to determine a cell type identity with
#'   confidence (default: 5)
#' @param DOUBLET_THRESHOLD numeric, penalty weight of predicting a doublet
#'   instead of a singlet for a pixel (default: 20)
#'
#' @return \code{\linkS4class{RCTD}} object
#'
#' @importFrom methods new
#' @export
#' @examples
#' data(rctd_simulation)
#'
#' # Create SpatialRNA and Reference objects
#' spatial_rna <- SpatialRNA(
#'     rctd_simulation$spatial_rna_coords,
#'     rctd_simulation$spatial_rna_counts
#' )
#' reference <- Reference(
#'     rctd_simulation$reference_counts,
#'     rctd_simulation$reference_cell_types
#' )
#'
#' # Create RCTD object
#' rctd <- create.RCTD(spatial_rna, reference)
#' 
create.RCTD <- function(
    spatialRNA, reference, max_cores = 4, test_mode = FALSE,
    gene_cutoff = 0.000125, fc_cutoff = 0.5, gene_cutoff_reg = 0.0002,
    fc_cutoff_reg = 0.75, UMI_min = 100, UMI_max = 20000000, counts_MIN = 10,
    UMI_min_sigma = 300, class_df = NULL, CELL_MIN_INSTANCE = 25,
    cell_type_names = NULL, MAX_MULTI_TYPES = 4, keep_reference = FALSE,
    cell_type_profiles = NULL, CONFIDENCE_THRESHOLD = 5, DOUBLET_THRESHOLD = 20
) {
    config <- list(
        gene_cutoff = gene_cutoff, fc_cutoff = fc_cutoff,
        gene_cutoff_reg = gene_cutoff_reg, fc_cutoff_reg = fc_cutoff_reg,
        UMI_min = UMI_min, UMI_min_sigma = UMI_min_sigma, max_cores = max_cores,
        N_epoch = 8, N_X = 50000, K_val = 100, N_fit = 1000, N_epoch_bulk = 30,
        MIN_CHANGE_BULK = 0.0001, MIN_CHANGE_REG = 0.001, UMI_max = UMI_max,
        counts_MIN = counts_MIN, MIN_OBS = 3, MAX_MULTI_TYPES = MAX_MULTI_TYPES,
        CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
        DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
    )
    if (test_mode) {
        config <- list(
            gene_cutoff = .00125, fc_cutoff = 0.5, gene_cutoff_reg = 0.002,
            fc_cutoff_reg = 0.75, UMI_min = 1000, N_epoch = 1, N_X = 50000,
            K_val = 100, N_fit = 50, N_epoch_bulk = 4, MIN_CHANGE_BULK = 1,
            MIN_CHANGE_REG = 0.001, UMI_max = 200000, MIN_OBS = 3,
            max_cores = 1, counts_MIN = 5, UMI_min_sigma = 300,
            MAX_MULTI_TYPES = MAX_MULTI_TYPES,
            CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
            DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
        )
    }
    if (is.null(cell_type_profiles)) {
        if (is.null(cell_type_names)) {
            cell_type_names <- levels(reference@cell_types)
        }
        cell_type_info <- list(
            info = process_cell_type_info(
                reference,
                cell_type_names = cell_type_names,
                CELL_MIN = CELL_MIN_INSTANCE
            ),
            renorm = NULL
        )
    } else {
        cell_type_names <- colnames(cell_type_profiles)
        cell_type_info <- list(
            info = list(
                cell_type_profiles,
                cell_type_names,
                length(cell_type_names)
            ),
            renorm = NULL
        )
    }
    if (!keep_reference) {
        reference <- create_downsampled_data(reference, n_samples = 5)
    }
    puck.original <- restrict_counts(spatialRNA, rownames(spatialRNA@counts),
        UMI_thresh = config$UMI_min, UMI_max = config$UMI_max,
        counts_thresh = config$counts_MIN
    )
    message("create.RCTD: getting regression differentially expressed genes: ")
    gene_list_reg <- get_de_genes(
        cell_type_info$info, puck.original,
        fc_thresh = config$fc_cutoff_reg,
        expr_thresh = config$gene_cutoff_reg,
        MIN_OBS = config$MIN_OBS
    )
    if (length(gene_list_reg) < 10) {
        stop(
            "create.RCTD: fewer than 10 regression differentially expressed ",
            "genes found"
        )
    }
    message(
        "create.RCTD: getting platform effect normalization differentially ",
        "expressed genes: "
    )
    gene_list_bulk <- get_de_genes(
        cell_type_info$info,
        puck.original,
        fc_thresh = config$fc_cutoff,
        expr_thresh = config$gene_cutoff,
        MIN_OBS = config$MIN_OBS
    )
    if (length(gene_list_bulk) < 10) {
        stop(
            "create.RCTD: fewer than 10 bulk differentially expressed genes ",
            "found"
        )
    }
    puck <- restrict_counts(
        puck.original,
        gene_list_bulk,
        UMI_thresh = config$UMI_min,
        UMI_max = config$UMI_max,
        counts_thresh = config$counts_MIN
    )
    puck <- restrict_puck(puck, colnames(puck@counts))
    if (is.null(class_df)) {
        class_df <- data.frame(
            cell_type_info$info[[2]],
            row.names = cell_type_info$info[[2]]
        )
    }
    colnames(class_df)[1] <- "class"
    internal_vars <- list(
        gene_list_reg = gene_list_reg,
        gene_list_bulk = gene_list_bulk,
        proportions = NULL,
        class_df = class_df,
        cell_types_assigned = FALSE
    )
    new(
        "RCTD",
        spatialRNA = puck,
        originalSpatialRNA = puck.original,
        reference = reference,
        config = config,
        cell_type_info = cell_type_info,
        internal_vars = internal_vars
    )
}

#' Run RCTD algorithm to decompose cell type mixtures
#'
#' Runs the RCTD algorithm to decompose cell type mixtures in spatial
#' transcriptomics data. The algorithm has three modes:
#' \itemize{
#'   \item \code{doublet}: Fits at most two cell types per pixel and classifies
#'     each pixel as a "singlet" or "doublet." Recommended for high spatial
#'     resolution technologies such as Slide-seq or MERFISH.
#'   \item \code{multi}: Uses a greedy algorithm to fit cell types up to a fixed
#'     maximum number.
#'   \item \code{full}: Can fit any number of cell types on each pixel.
#'     Recommended for low spatial resolution technologies such as 100-micron
#'     resolution Visium.
#' }
#'
#' @param RCTD \code{\linkS4class{RCTD}} object created using
#'   \code{\link{create.RCTD}}
#' @param doublet_mode character string specifying the RCTD mode: "doublet",
#'   "multi", or "full" (default: "doublet")
#'
#' @return A SummarizedExperiment object containing the RCTD results with:
#'   \itemize{
#'     \item Two assays:
#'       \itemize{
#'         \item \code{weights}: Cell type proportions restricted according to
#'         the specified mode
#'         \item \code{weights_full}: Unrestricted cell type proportions (stored
#'         redundantly in full mode)
#'       }
#'     \item rowData containing:
#'       \itemize{
#'         \item \code{x}, \code{y}: Spatial coordinates for each pixel
#'         \item For doublet mode:
#'           \itemize{
#'             \item \code{spot_class}: Classification as "singlet",
#'             "doublet_certain", "doublet_uncertain", or "reject"
#'             \item \code{first_type}, \code{second_type}: Predicted cell types
#'             \item \code{first_class}, \code{second_class}: Whether
#'             predictions were made at the class level
#'             \item Additional metrics like \code{min_score},
#'             \code{singlet_score}
#'           }
#'         \item For multi mode:
#'           \itemize{
#'             \item \code{cell_type_list}: List of cell types per pixel
#'             \item \code{conf_list}: List of confident cell type predictions
#'             \item Additional metrics like \code{min_score}
#'           }
#'       }
#'   }
#' @export
#' @examples
#' data(rctd_simulation)
#'
#' # Create SpatialRNA and Reference objects
#' spatial_rna <- SpatialRNA(
#'     rctd_simulation$spatial_rna_coords,
#'     rctd_simulation$spatial_rna_counts
#' )
#' reference <- Reference(
#'     rctd_simulation$reference_counts,
#'     rctd_simulation$reference_cell_types
#' )
#'
#' # Create RCTD object
#' rctd <- create.RCTD(spatial_rna, reference)
#' rctd_se <- run.RCTD(rctd, doublet_mode = "doublet")
#'
#' # Access the cell type proportions
#' library(SummarizedExperiment)
#' head(assay(rctd_se, "weights"))
#'
#' # Check spot classifications for doublet mode
#' head(rowData(rctd_se)$spot_class)
#' 
run.RCTD <- function(RCTD, doublet_mode = "doublet") {
    if (!(doublet_mode %in% c("doublet", "multi", "full"))) {
        stop(
            "run.RCTD: doublet_mode=", doublet_mode," is not a valid choice. ",
            "Please set doublet_mode=doublet, multi, or full."
        )
    }
    RCTD@config$RCTDmode <- doublet_mode
    RCTD <- fitBulk(RCTD)
    RCTD <- choose_sigma_c(RCTD)
    RCTD <- fitPixels(RCTD, doublet_mode = doublet_mode)
}

check_vector <- function(variable, var_name, f_name, require_int = FALSE) {
    if (!is.atomic(variable)) {
        stop(
            f_name, ": ", var_name, " is not an atomic vector. Please format ",
            var_name, " as an atomic vector."
        )
    }
    if (!is.numeric(variable)) {
        stop(f_name, ": ", var_name, " is not numeric")
    }
    if (is.null(names(variable))) {
        stop(f_name, ": names(", var_name, ") is null. Please enter names")
    }
    if (length(variable) == 1) {
        stop(
            f_name, ": the length of ", var_name, " is 1, indicating only one ",
            "element present. Please format ", var_name, " so that the length ",
            "is greater than 1."
        )
    }
    if (require_int) {
        if (max(abs(variable %% 1)) > 1e-6) {
            stop(f_name, ": variable does not contain integers")
        }
    }
}
