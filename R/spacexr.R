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
#' \code{\link{runRctd}}.
#'
#' @param spatial_experiment \code{\link[SpatialExperiment]{SpatialExperiment}}
#'   object containing spatial transcriptomics data to be deconvolved. The
#'   object must contain:
#'   \itemize{
#'     \item An \code{assay} matrix of gene expression counts (genes as rows,
#'     pixels as columns) with unique gene names as row names and unique pixel
#'     barcodes as column names.
#'     \item A \code{spatialCoords} matrix containing x and y coordinates for
#'     each pixel. If not provided, dummy coordinates will be used.
#'     \item Optionally, a \code{colData} column named \code{nUMI} containing
#'     total UMI counts for each pixel. If not provided, \code{nUMI} will be
#'     calculated as the column sums of the counts matrix.
#'   }
#' @param reference_experiment
#'   \code{\link[SummarizedExperiment]{SummarizedExperiment}} object containing
#'   annotated RNA-seq data (e.g., from snRNA-seq, scRNA-seq, or cell
#'   type-specific bulk RNA-seq), used to learn cell type profiles. The object
#'   must contain:
#'   \itemize{
#'     \item An \code{assay} matrix of gene expression counts (genes as rows,
#'     cells as columns) with unique gene names as row names and unique cell
#'     barcodes as column names.
#'     \item A \code{colData} column containing cell type annotations for each
#'     cell (column name specified by \code{cell_type_col}).
#'     \item Optionally, a \code{colData} column named \code{nUMI} containing
#'     total UMI counts for each cell. If not provided, \code{nUMI} will be
#'     calculated as the column sums of the counts matrix.
#'   }
#' @param cell_type_col character, name of the entry in
#'   \code{colData(reference_experiment)} containing cell type annotations
#'   (default: \code{"cell_type"})
#' @param max_cores numeric, maximum number of cores to use for parallel
#'   processing (default: 4)
#' @param require_int logical, whether counts and nUMI are required to be
#'   integers (default: \code{TRUE})
#' @param gene_cutoff numeric, minimum normalized gene expression for genes to
#'   be included in the platform effect normalization step (default: 0.000125)
#' @param fc_cutoff numeric, minimum log-fold-change (across cell types) for
#'   genes to be included in the platform effect normalization step (default:
#'   0.5)
#' @param gene_cutoff_reg numeric, minimum normalized gene expression for genes
#'   to be included in the RCTD step (default: 0.0002)
#' @param fc_cutoff_reg numeric, minimum log-fold-change (across cell types) for
#'   genes to be included in the RCTD step (default: 0.75)
#' @param counts_min numeric, minimum total counts per pixel of genes used in
#'   analysis (default: 10)
#' @param UMI_min numeric, minimum UMI count per pixel (default: 100)
#' @param UMI_max numeric, maximum UMI count per pixel (default: 20,000,000)
#' @param UMI_min_sigma numeric, minimum UMI count for pixels used in platform
#'   effect normalization (default: 300)
#' @param ref_UMI_min numeric, minimum UMI count for cells to be included in the
#'   reference (default: 100)
#' @param ref_n_cells_min numeric, minimum number of cells per cell type in the
#'   reference (default: 25)
#' @param ref_n_cells_max numeric, maximum number of cells per cell type in the
#'   reference. Will downsample if this number is exceeded. (default: 10,000)
#' @param cell_type_profiles matrix of precomputed cell type expression profiles
#'   (genes by cell type), optional. If this option is used, gene names and cell
#'   type names must be present in the \code{dimnames}, and the reference will
#'   be ignored.
#' @param keep_reference logical, whether to retain the full reference data in
#'   the output object (default: \code{FALSE})
#' @param class_df data frame mapping cell types to classes, optional. If
#'   specified, RCTD will report confidence on the class level.
#' @param cell_type_names character vector of cell type names to include,
#'   optional
#' @param MAX_MULTI_TYPES numeric, maximum number of cell types per pixel in
#'   multi mode (default: 4)
#' @param CONFIDENCE_THRESHOLD numeric, minimum change in likelihood (compared
#'   to other cell types) necessary to determine a cell type identity with
#'   confidence (default: 5)
#' @param DOUBLET_THRESHOLD numeric, penalty weight of predicting a doublet
#'   instead of a singlet for a pixel (default: 20)
#' @param test_mode logical, whether to run in test mode with reduced
#'   computation (default: \code{FALSE})
#'
#' @return \code{\linkS4class{RCTD}} object
#'
#' @importFrom methods new as is
#' @importFrom SpatialExperiment spatialCoords
#' @importFrom SummarizedExperiment SummarizedExperiment assay colData
#' @export
#' @examples
#' data(simRctd)
#'
#' # Spatial transcriptomics data
#' library(SpatialExperiment)
#' spatial_spe <- SpatialExperiment(
#'     assay = simRctd$spatial_rna_counts,
#'     spatialCoords = simRctd$spatial_rna_coords
#' )
#'
#' # Reference data
#' library(SummarizedExperiment)
#' reference_se <- SummarizedExperiment(
#'     assays = list(counts = simRctd$reference_counts),
#'     colData = simRctd$reference_cell_types
#' )
#'
#' # Create RCTD configuration
#' rctd <- createRctd(spatial_spe, reference_se, max_cores = 1)
#'
createRctd <- function(
    spatial_experiment, reference_experiment, cell_type_col = "cell_type",
    max_cores = 4, require_int = TRUE, gene_cutoff = 0.000125, fc_cutoff = 0.5,
    gene_cutoff_reg = 0.0002, fc_cutoff_reg = 0.75, counts_min = 10,
    UMI_min = 100, UMI_max = 20000000, UMI_min_sigma = 300, ref_UMI_min = 100,
    ref_n_cells_min = 25, ref_n_cells_max = 10000, cell_type_profiles = NULL,
    keep_reference = FALSE, class_df = NULL, cell_type_names = NULL,
    MAX_MULTI_TYPES = 4, CONFIDENCE_THRESHOLD = 5, DOUBLET_THRESHOLD = 20,
    test_mode = FALSE
) {
    # Convert SpatialExperiment to SpatialRNA
    coords <- NULL
    use_fake_coords <- length(spatialCoords(spatial_experiment)) == 0
    if (!use_fake_coords) {
        coords <- as.data.frame(spatialCoords(spatial_experiment))
        colnames(coords) <- c("x", "y")
        rownames(coords) <- colnames(spatial_experiment)
    }
    counts <- assay(spatial_experiment)
    nUMI <- colData(spatial_experiment)$nUMI
    if (!is.null(nUMI)) {
        names(nUMI) <- colnames(counts)
    }
    spatialRNA <- SpatialRNA(
        coords, counts, nUMI = nUMI,
        use_fake_coords = use_fake_coords, require_int = require_int
    )

    # Convert SummarizedExperiment to Reference
    reference <- NULL
    if (is.null(cell_type_profiles)) {
        ref_counts <- assay(reference_experiment)
        if (!cell_type_col %in% colnames(colData(reference_experiment))) {
            stop(
                "Cell type column '", cell_type_col,
                "' not found in reference colData"
            )
        }
        cell_types <- factor(colData(reference_experiment)[[cell_type_col]])
        names(cell_types) <- colnames(ref_counts)
        ref_nUMI <- colData(reference_experiment)$nUMI
        if (!is.null(ref_nUMI)) {
            names(ref_nUMI) <- colnames(ref_counts)
        }
        reference <- Reference(
            ref_counts, cell_types, nUMI = ref_nUMI, require_int = require_int,
            n_max_cells = ref_n_cells_max,  min_UMI = ref_UMI_min
        )
    }

    config <- list(
        gene_cutoff = gene_cutoff, fc_cutoff = fc_cutoff,
        gene_cutoff_reg = gene_cutoff_reg, fc_cutoff_reg = fc_cutoff_reg,
        UMI_min = UMI_min, UMI_min_sigma = UMI_min_sigma, max_cores = max_cores,
        N_epoch = 8, N_X = 50000, K_val = 100, N_fit = 1000, N_epoch_bulk = 30,
        MIN_CHANGE_BULK = 0.0001, MIN_CHANGE_REG = 0.001, UMI_max = UMI_max,
        counts_min = counts_min, MIN_OBS = 3, MAX_MULTI_TYPES = MAX_MULTI_TYPES,
        CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
        DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
    )
    if (test_mode) {
        config <- list(
            gene_cutoff = .00125, fc_cutoff = 0.5, gene_cutoff_reg = 0.002,
            fc_cutoff_reg = 0.75, UMI_min = 1000, N_epoch = 1, N_X = 50000,
            K_val = 100, N_fit = 50, N_epoch_bulk = 4, MIN_CHANGE_BULK = 1,
            MIN_CHANGE_REG = 0.001, UMI_max = 200000, MIN_OBS = 3,
            max_cores = 1, counts_min = 5, UMI_min_sigma = 300,
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
                CELL_MIN = ref_n_cells_min
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
    if (!keep_reference && is.null(cell_type_profiles)) {
        reference <- create_downsampled_data(reference, n_samples = 5)
    }
    puck.original <- restrict_counts(spatialRNA, rownames(spatialRNA@counts),
        UMI_thresh = config$UMI_min, UMI_max = config$UMI_max,
        counts_thresh = config$counts_min
    )
    message("createRctd: getting regression differentially expressed genes: ")
    gene_list_reg <- get_de_genes(
        cell_type_info$info, puck.original,
        fc_thresh = config$fc_cutoff_reg,
        expr_thresh = config$gene_cutoff_reg,
        MIN_OBS = config$MIN_OBS
    )
    if (length(gene_list_reg) < 10) {
        stop(
            "createRctd: fewer than 10 regression differentially expressed ",
            "genes found"
        )
    }
    message(
        "createRctd: getting platform effect normalization differentially ",
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
            "createRctd: fewer than 10 bulk differentially expressed genes ",
            "found"
        )
    }
    puck <- restrict_counts(
        puck.original,
        gene_list_bulk,
        UMI_thresh = config$UMI_min,
        UMI_max = config$UMI_max,
        counts_thresh = config$counts_min
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
#' transcriptomics data. For each pixel in the spatial data, RCTD estimates the
#' proportions of different cell types by comparing the gene expression at a
#' pixel to the reference cell type profiles, while accounting for technical
#' factors like platform effects and varying sequencing depth. The algorithm has
#' three modes suited for different spatial technologies:
#' \itemize{
#'   \item \code{doublet}: Fits at most two cell types per pixel and classifies
#'     each pixel as a \code{"singlet"} (one cell type) or \code{"doublet"}
#'     (two cell types). Best for high spatial resolution technologies like
#'     Slide-seq or MERFISH, where pixels are more likely to contain only 1 or
#'     2 cells.
#'   \item \code{multi}: Uses a greedy algorithm to fit up to
#'     \code{MAX_MULTI_TYPES} cell types per pixel (default: 4). Best for lower
#'     resolution technologies like 100-micron Visium spots, which can contain
#'     more cell types.
#'   \item \code{full}: Fits any number of cell types per pixel without
#'     restrictions.
#' }
#'
#' @param RCTD \code{\linkS4class{RCTD}} object created using
#'   \code{\link{createRctd}}
#' @param rctd_mode character string specifying the RCTD mode:
#'   \code{"doublet"}, \code{"multi"}, or \code{"full"}
#'   (default: \code{"doublet"})
#'
#' @return A SummarizedExperiment object containing the RCTD results with:
#'   \itemize{
#'     \item Three assays (one in full mode):
#'       \itemize{
#'         \item \code{weights}: Cell type proportions restricted according to
#'         the specified mode (not available in full mode)
#'         \item \code{weights_unconfident}: Cell type proportions restricted
#'         according to the specified mode, including unconfident predictions
#'         (not available in full mode)
#'         \item \code{weights_full}: Unrestricted cell type proportions
#'       }
#'     \item \code{rowData} containing:
#'       \itemize{
#'         \item \code{x}, \code{y}: Spatial coordinates for each pixel
#'         \item For doublet mode:
#'           \itemize{
#'             \item \code{spot_class}: Classification as \code{"singlet"},
#'             \code{"doublet_certain"}, \code{"doublet_uncertain"}, or
#'             \code{"reject"}
#'             \item \code{first_type}, \code{second_type}: Predicted cell types
#'             \item \code{first_class}, \code{second_class}: Whether
#'             predictions were made at the class level
#'             \item Additional metrics like \code{min_score},
#'             \code{singlet_score}
#'           }
#'         \item For multi mode:
#'           \itemize{
#'             \item \code{cell_type_list}: List of cell types per pixel
#'             \item \code{conf_list}: List of whether cell type predictions
#'             are confident
#'             \item Additional metrics like \code{min_score}
#'           }
#'       }
#'   }
#' @export
#' @examples
#' data(simRctd)
#'
#' # Spatial transcriptomics data
#' library(SpatialExperiment)
#' spatial_spe <- SpatialExperiment(
#'     assay = simRctd$spatial_rna_counts,
#'     spatialCoords = simRctd$spatial_rna_coords
#' )
#'
#' # Reference data
#' library(SummarizedExperiment)
#' reference_se <- SummarizedExperiment(
#'     assays = list(counts = simRctd$reference_counts),
#'     colData = simRctd$reference_cell_types
#' )
#'
#' # Create RCTD configuration
#' rctd <- createRctd(spatial_spe, reference_se, max_cores = 1)
#' rctd_se <- runRctd(rctd, rctd_mode = "doublet")
#'
#' # Access the cell type proportions
#' head(assay(rctd_se, "weights"))
#'
#' # Check spot classifications for doublet mode
#' head(rowData(rctd_se)$spot_class)
#'
runRctd <- function(RCTD, rctd_mode = "doublet") {
    if (!(rctd_mode %in% c("doublet", "multi", "full"))) {
        stop(
            "runRctd: rctd_mode=", rctd_mode," is not a valid choice. ",
            "Please set rctd_mode=doublet, multi, or full."
        )
    }
    RCTD@config$RCTDmode <- rctd_mode
    RCTD <- fitBulk(RCTD)
    RCTD <- choose_sigma_c(RCTD)
    RCTD <- fitPixels(RCTD, rctd_mode = rctd_mode)
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
