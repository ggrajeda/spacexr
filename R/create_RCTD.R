summarizedExperimentToReference <- function(
    reference_experiment, cell_type_col = "cell_type", 
    require_int = TRUE, ref_n_cells_max = 10000, ref_UMI_min = 100
) {
    ref_name <- "reference_experiment"
    ref_counts <- getCounts(reference_experiment, ref_name)
    ref_counts <- check_counts(ref_counts, ref_name, require_int = FALSE)
    if (!cell_type_col %in% colnames(colData(reference_experiment))) {
        stop(
            "Cell type column '", cell_type_col, "' not found in reference ",
            "colData"
        )
    }
    cell_types <- factor(colData(reference_experiment)[[cell_type_col]])
    names(cell_types) <- colnames(ref_counts)
    ref_nUMI <- colData(reference_experiment)$nUMI
    if (!is.null(ref_nUMI)) {
        names(ref_nUMI) <- colnames(ref_counts)
    }
    createReference(
        ref_counts, cell_types, nUMI = ref_nUMI, require_int = require_int,
        n_max_cells = ref_n_cells_max, min_UMI = ref_UMI_min
    )
}

restrictCounts <- function(
    spatial_experiment, counts, gene_list,
    UMI_thresh = 1, UMI_max = 20000, counts_thresh = 1
) {
    total_gene_counts <- colSums(counts[gene_list, , drop = FALSE])
    keep_loc <- (
        (colData(spatial_experiment)$nUMI >= UMI_thresh) &
        (colData(spatial_experiment)$nUMI <= UMI_max) &
        (total_gene_counts >= counts_thresh)
    )
    list(
        restricted_se = spatial_experiment[gene_list, keep_loc, drop = FALSE],
        restricted_counts = counts[gene_list, keep_loc, drop = FALSE]
    )
}

#' Filter pixels and create internal variables
#'
#' @param spatial_experiment
#'   \code{\link[SummarizedExperiment]{SummarizedExperiment}} object with
#'   spatial transcriptomics data
#' @param spatial_counts spatial transcriptomics count matrix
#' @param cell_type_info list containing cell type information
#' @inheritParams createRctd
#'
#' @return List containing the filtered pixels and internal variables
#'
#' @keywords internal
filterPixelsAndGetVars <- function(
    spatial_experiment, spatial_counts, cell_type_info, gene_cutoff = 0.000125,
    fc_cutoff = 0.5, gene_cutoff_reg = 0.0002, fc_cutoff_reg = 0.75,
    gene_obs_min = 3, pixel_count_min = 10, UMI_min = 100, UMI_max = 20000000,
    UMI_min_sigma = 300, class_df = NULL
) {
    restricted_data <- restrictCounts(
        spatial_experiment, spatial_counts, rownames(spatial_experiment),
        UMI_thresh = UMI_min, UMI_max = UMI_max, counts_thresh = pixel_count_min
    )
    gene_list_reg <- getDeGenes(
        restricted_data$restricted_counts, cell_type_info$info,
        fc_thresh = fc_cutoff_reg, expr_thresh = gene_cutoff_reg,
        MIN_OBS = gene_obs_min, de_type = "regression"
    )
    gene_list_bulk <- getDeGenes(
        restricted_data$restricted_counts, cell_type_info$info,
        fc_thresh = fc_cutoff, expr_thresh = gene_cutoff,
        MIN_OBS = gene_obs_min, de_type = "bulk"
    )

    spatial_experiment <- restrictCounts(
        restricted_data$restricted_se, restricted_data$restricted_counts,
        gene_list_bulk, UMI_thresh = UMI_min, UMI_max = UMI_max,
        counts_thresh = pixel_count_min
    )$restricted_se
    if (is.null(class_df)) {
        class_df <- data.frame(
            cell_type_info$info[[2]],
            row.names = cell_type_info$info[[2]]
        )
    }
    colnames(class_df)[1] <- "class"
    internal_vars <- list(
        gene_list_reg = gene_list_reg, gene_list_bulk = gene_list_bulk,
        proportions = NULL, class_df = class_df, cell_types_assigned = FALSE
    )

    config <- list(
        gene_cutoff = gene_cutoff, fc_cutoff = fc_cutoff,
        gene_cutoff_reg = gene_cutoff_reg, fc_cutoff_reg = fc_cutoff_reg,
        UMI_min = UMI_min, UMI_max = UMI_max, UMI_min_sigma = UMI_min_sigma,
        N_epoch = 8, N_X = 50000, K_val = 100, N_fit = 1000, N_epoch_bulk = 30,
        MIN_CHANGE_BULK = 0.0001, MIN_CHANGE_REG = 0.001,
        pixel_count_min = pixel_count_min, MIN_OBS = gene_obs_min
    )

    return(list(
        spatial_experiment = spatial_experiment,
        internal_vars = internal_vars,
        config = config
    ))
}

checkSummarizedExperiment <- function(se, se_name) {
    if (!is(se, "SummarizedExperiment")) {
        stop("'", se_name, "' must be a SummarizedExperiment object")
    }
}

validateCellTypeInformation <- function(
    cell_type_profiles, class_df, cell_type_names
) {
    if (!is.null(cell_type_profiles)) {
        if (!is.matrix(cell_type_profiles)) {
            stop("'cell_type_profiles' must be a matrix")
        }
        if (is.null(rownames(cell_type_profiles)) ||
            is.null(colnames(cell_type_profiles))) {
            stop(
                "'cell_type_profiles' must have rownames (genes) ",
                "and colnames (cell types)"
            )
        }
    }

    if (!is.null(class_df) && !is.data.frame(class_df)) {
        stop("'class_df' must be a data frame")
    }

    if (!is.null(cell_type_names) &&
        (!is.character(cell_type_names) || length(cell_type_names) == 0)) {
        stop("'cell_type_names' must be a non-empty character vector")
    }
}

#' Preprocess data before RCTD
#'
#' Performs initial preprocessing steps on a spatial transcriptomics dataset
#' and a reference dataset prior to running RCTD. This function filters pixels
#' and genes based on UMI counts and other thresholds, and identifies
#' differentially expressed genes. The output of this function should be passed
#' to \code{runRctd} to perform the cell type deconvolution.
#'
#' @param spatial_experiment
#'   \code{\link[SummarizedExperiment]{SummarizedExperiment}} object (or any
#'   derivative object, including \link[SpatialExperiment]{SpatialExperiment})
#'   containing spatial transcriptomics data to be deconvolved. The object must
#'   contain:
#'   \itemize{
#'     \item An \code{assay} matrix of gene expression counts (genes as rows,
#'     pixels as columns) with unique gene names as row names and unique pixel
#'     barcodes as column names.
#'     \item Optionally, a \code{spatialCoords} matrix containing x and y
#'     coordinates for each pixel. If \code{spatial_experiment} does not have
#'     \code{spatialCoords}, dummy coordinates will be used.
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
#' @param require_int logical, whether counts and nUMI are required to be
#'   integers (default: \code{TRUE})
#' @param gene_cutoff numeric, minimum normalized gene expression for genes to
#'   be included in the platform effect normalization step (default: 0.000125)
#' @param fc_cutoff numeric, minimum log fold change (across cell types) for
#'   genes to be included in the platform effect normalization step (default:
#'   0.5)
#' @param gene_cutoff_reg numeric, minimum normalized gene expression for genes
#'   to be included in the RCTD step (default: 0.0002)
#' @param fc_cutoff_reg numeric, minimum log fold change (across cell types) for
#'   genes to be included in the RCTD step (default: 0.75)
#' @param gene_obs_min numeric, minimum number of times a gene must appear in
#'   the spatial transcriptomics data to be included in the analysis
#'   (default: 3)
#' @param pixel_count_min numeric, minimum total gene count for a pixel to be
#'   included in the analysis (default: 10)
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
#' @param class_df data frame mapping cell types to classes, optional. If
#'   specified, RCTD will report confidence on the class level.
#' @param cell_type_names character vector of cell type names to include,
#'   optional
#'
#' @return A list with four elements:
#'   \itemize{
#'     \item \code{spatial_experiment}: Preprocessed
#'     \code{\link[SummarizedExperiment]{SummarizedExperiment}} object
#'     containing spatial transcriptomics data with filtered pixels and genes
#'     \item \code{cell_type_info}: List containing cell type information,
#'     including expression profiles and metadata
#'     \item \code{internal_vars}: List of internal variables used by RCTD,
#'     including differentially expressed gene lists and class information
#'     \item \code{config}: List of configuration parameters used for RCTD
#'   }
#'
#' @importFrom methods new as is isGeneric existsMethod
#' @importFrom SpatialExperiment spatialCoords
#' @importFrom SummarizedExperiment SummarizedExperiment assay assays colData
#'   assayNames
#' @export
#' @inherit runRctd examples
createRctd <- function(
    spatial_experiment, reference_experiment, 
    cell_type_col = "cell_type", require_int = TRUE, gene_cutoff = 0.000125,
    fc_cutoff = 0.5, gene_cutoff_reg = 0.0002, fc_cutoff_reg = 0.75,
    gene_obs_min = 3, pixel_count_min = 10, UMI_min = 100, UMI_max = 20000000,
    UMI_min_sigma = 300, ref_UMI_min = 100, ref_n_cells_min = 25,
    ref_n_cells_max = 10000, cell_type_profiles = NULL,
    class_df = NULL, cell_type_names = NULL
) {
    # Type validity checks
    checkSummarizedExperiment(spatial_experiment, "spatial_experiment")
    if (is.null(cell_type_profiles)) {
        checkSummarizedExperiment(reference_experiment, "reference_experiment")
    }

    if (!is.character(cell_type_col) || length(cell_type_col) != 1) {
        stop("'cell_type_col' must be a character string")
    }

    # Check numeric parameters
    numeric_params <- list(
        gene_cutoff = gene_cutoff, fc_cutoff = fc_cutoff,
        gene_cutoff_reg = gene_cutoff_reg, fc_cutoff_reg = fc_cutoff_reg,
        pixel_count_min = pixel_count_min, UMI_min = UMI_min,
        UMI_max = UMI_max, UMI_min_sigma = UMI_min_sigma,
        ref_UMI_min = ref_UMI_min, ref_n_cells_min = ref_n_cells_min,
        ref_n_cells_max = ref_n_cells_max
    )

    for (param_name in names(numeric_params)) {
        checkNumeric(numeric_params[[param_name]], param_name)      
    }

    validateCellTypeInformation(cell_type_profiles, class_df, cell_type_names)

    spatial_name <- "spatial_experiment"
    spatial_counts <- getCounts(spatial_experiment, spatial_name)
    spatial_counts <- check_counts(
        spatial_counts, spatial_name, require_int = require_int
    )
    nUMI <- colData(spatial_experiment)$nUMI
    if (is.null(nUMI)) {
        colData(spatial_experiment)$nUMI <- colSums(spatial_counts)
    }

    # Convert SummarizedExperiment to Reference and store the original reference
    reference <- NULL
    if (is.null(cell_type_profiles)) {
        reference <- summarizedExperimentToReference(
            reference_experiment, cell_type_col = cell_type_col,
            require_int = require_int, ref_n_cells_max = ref_n_cells_max, 
            ref_UMI_min = ref_UMI_min
        )
    }

    # Create cell type info
    cell_type_info <- createCellTypeInfo(
        reference = reference, cell_type_names = cell_type_names,
        cell_type_profiles = cell_type_profiles,
        ref_n_cells_min = ref_n_cells_min
    )

    # Create filtered puck and internal variables
    pixels_and_vars <- filterPixelsAndGetVars(
        spatial_experiment, spatial_counts, cell_type_info, gene_cutoff,
        fc_cutoff, gene_cutoff_reg, fc_cutoff_reg, gene_obs_min,
        pixel_count_min, UMI_min, UMI_max, UMI_min_sigma, class_df
    )

    # Return the filtered objects
    list(
        spatial_experiment = pixels_and_vars$spatial_experiment,
        cell_type_info = cell_type_info,
        internal_vars = pixels_and_vars$internal_vars,
        config = pixels_and_vars$config
    )
}
