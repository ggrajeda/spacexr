#' Convert a SummarizedExperiment to a SpatialRNA object
#'
#' @param inheritParams createRctd
#'
#' @return \code{\linkS4class{SpatialRNA}} object
#'
#' @keywords internal
#'
summarizedExperimentToSpatialRNA <- function(
    spatial_experiment, require_int = TRUE
) {
    coords <- NULL
    use_fake_coords <- TRUE

    # Check if spatialCoords is defined for spatial_experiment
    if (isGeneric("spatialCoords") && 
        existsMethod("spatialCoords", class(spatial_experiment))) {
        spatial_coords <- spatialCoords(spatial_experiment)
        use_fake_coords <- length(spatial_coords) == 0
        if (!use_fake_coords) {
            coords <- as.data.frame(spatial_coords)
            colnames(coords) <- c("x", "y")
            rownames(coords) <- colnames(spatial_experiment)
        }
    }
    if (length(assays(spatial_experiment)) > 1) {
        warning(
            "Multiple assays in spatial_experiment. Choosing the first assay."
        )
    }
    counts <- assay(spatial_experiment)
    nUMI <- colData(spatial_experiment)$nUMI
    if (!is.null(nUMI)) {
        names(nUMI) <- colnames(counts)
    }
    createSpatialRNA(
        coords, counts, nUMI = nUMI,
        use_fake_coords = use_fake_coords, require_int = require_int
    )
}

#' Convert a SummarizedExperiment to a Reference object
#'
#' @inheritParams createRctd
#'
#' @return \code{\linkS4class{Reference}} object
#'
#' @keywords internal
#'
summarizedExperimentToReference <- function(
    reference_experiment, cell_type_col = "cell_type", 
    require_int = TRUE, ref_n_cells_max = 10000, ref_UMI_min = 100
) {
    if (length(assays(reference_experiment)) > 1) {
        warning(
            "Multiple assays in reference_experiment. Choosing the first ",
            "assay."
        )
    }
    ref_counts <- assay(reference_experiment)
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

#' Process cell type information from a Reference object
#'
#' @param reference \code{\linkS4class{Reference}} object
#' @param cell_type_names character vector of cell type names to include
#' @param CELL_MIN numeric, minimum number of cells per cell type in the
#'   reference (default: 25)
#'
#' @return List containing cell type information
#' 
#' @importFrom utils capture.output
#' @keywords internal
#'
process_cell_type_info <- function(reference, cell_type_names, CELL_MIN = 25) {
    message(
        "Number of cells in reference: ", dim(counts(reference))[2]
    )
    message(
        "Number of genes in reference: ", dim(counts(reference))[1]
    )
    cell_counts <- table(cell_types(reference))
    message(paste0(capture.output(cell_counts), collapse = "\n"))

    if (min(cell_counts) < CELL_MIN) {
        stop(
            "process_cell_type_info: need a minimum of ", CELL_MIN,
            " cells for each cell type in the reference"
        )
    }
    cell_type_info <- get_cell_type_info(
        counts(reference),
        cell_types(reference),
        nUMI(reference),
        cell_type_names = cell_type_names
    )
    return(cell_type_info)
}

#' Create cell type information
#'
#' @param reference \code{\linkS4class{Reference}} object or NULL if using
#'   cell_type_profiles
#' @param cell_type_names character vector of cell type names to include,
#'   optional
#' @param cell_type_profiles matrix of precomputed cell type expression profiles
#'   (genes by cell type), optional
#' @param ref_n_cells_min numeric, minimum number of cells per cell type in the
#'   reference (default: 25)
#'
#' @return A list containing cell type information
#'
#' @keywords internal
#'
create_cell_type_info <- function(
    reference = NULL, cell_type_names = NULL, 
    cell_type_profiles = NULL, ref_n_cells_min = 25
) {
    if (is.null(cell_type_profiles)) {
        if (is.null(cell_type_names)) {
            cell_type_names <- levels(cell_types(reference))
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
    cell_type_info
}

#' Create puck and internal variables
#'
#' @param spatialRNA \code{\linkS4class{SpatialRNA}} object
#' @param cell_type_info list containing cell type information
#' @param config list of configuration parameters
#' @param class_df data frame mapping cell types to classes, optional
#'
#' @return List containing the puck and internal variables
#'
#' @keywords internal
#'
create_puck_and_internal_vars <- function(
    spatialRNA, cell_type_info, config, class_df = NULL
) {
    puck.original <- restrict_counts(spatialRNA, rownames(counts(spatialRNA)),
        UMI_thresh = config$UMI_min, UMI_max = config$UMI_max,
        counts_thresh = config$pixel_count_min
    )
    message("Getting regression differentially expressed genes: ")
    gene_list_reg <- get_de_genes(
        cell_type_info$info, puck.original,
        fc_thresh = config$fc_cutoff_reg,
        expr_thresh = config$gene_cutoff_reg,
        MIN_OBS = config$MIN_OBS
    )
    if (length(gene_list_reg) < 10) {
        stop(
            "create_puck_and_internal_vars: fewer than 10 regression ",
            "differentially expressed genes found"
        )
    }
    message(
        "Getting platform effect normalization differentially expressed genes: "
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
            "create_puck_and_internal_vars: fewer than 10 bulk differentially ",
            "expressed genes found"
        )
    }
    puck <- restrict_counts(
        puck.original,
        gene_list_bulk,
        UMI_thresh = config$UMI_min,
        UMI_max = config$UMI_max,
        counts_thresh = config$pixel_count_min
    )
    puck <- restrict_puck(puck, colnames(counts(puck)))
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
    return(list(puck = puck, internal_vars = internal_vars))
}

#' \code{\linkS4class{RctdConfig}} object constructor
#'
#' Creates an RCTD configuration from a spatial transcriptomics dataset and a
#' reference dataset. This function performs initial preprocessing steps,
#' including identifying differentially expressed genes and normalizing for
#' platform effects. Users should subsequently pass this object to
#' \code{\link{runRctd}}.
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
#' @param max_cores numeric, maximum number of cores to use for parallel
#'   processing (default: 4)
#' @param cell_type_col character, name of the entry in
#'   \code{colData(reference_experiment)} containing cell type annotations
#'   (default: \code{"cell_type"})
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
#' @return \code{\linkS4class{RctdConfig}} object
#'
#' @importFrom methods new as is isGeneric existsMethod
#' @importFrom SpatialExperiment spatialCoords
#' @importFrom SummarizedExperiment SummarizedExperiment assay assays colData
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
#' rctd_config <- createRctd(spatial_spe, reference_se, max_cores = 1)
#'
createRctd <- function(
    spatial_experiment, reference_experiment, max_cores = 4,
    cell_type_col = "cell_type", require_int = TRUE, gene_cutoff = 0.000125,
    fc_cutoff = 0.5, gene_cutoff_reg = 0.0002, fc_cutoff_reg = 0.75,
    gene_obs_min = 3, pixel_count_min = 10, UMI_min = 100, UMI_max = 20000000,
    UMI_min_sigma = 300, ref_UMI_min = 100, ref_n_cells_min = 25,
    ref_n_cells_max = 10000, cell_type_profiles = NULL, keep_reference = FALSE,
    class_df = NULL, cell_type_names = NULL, MAX_MULTI_TYPES = 4,
    CONFIDENCE_THRESHOLD = 5, DOUBLET_THRESHOLD = 20, test_mode = FALSE
) {
    # Type validity checks
    if (!is(spatial_experiment, "SummarizedExperiment")) {
        stop(
            "createRctd: spatial_experiment must be a SummarizedExperiment ",
            "object"
        )
    }

    if (is.null(cell_type_profiles) &&
        !is(reference_experiment, "SummarizedExperiment")) {
        stop(
            "createRctd: reference_experiment must be a SummarizedExperiment ",
            "object"
        )
    }

    if (!is.numeric(max_cores) ||
        max_cores <= 0 ||
        max_cores != as.integer(max_cores)) {
        stop("createRctd: max_cores must be a positive integer")
    }

    if (!is.character(cell_type_col) || length(cell_type_col) != 1) {
        stop("createRctd: cell_type_col must be a character string")
    }

    if (!is.logical(require_int) || length(require_int) != 1) {
        stop("createRctd: require_int must be a logical value")
    }

    # Check numeric parameters
    numeric_params <- list(
        gene_cutoff = gene_cutoff, fc_cutoff = fc_cutoff,
        gene_cutoff_reg = gene_cutoff_reg, fc_cutoff_reg = fc_cutoff_reg,
        pixel_count_min = pixel_count_min, UMI_min = UMI_min,
        UMI_max = UMI_max, UMI_min_sigma = UMI_min_sigma,
        ref_UMI_min = ref_UMI_min, ref_n_cells_min = ref_n_cells_min,
        ref_n_cells_max = ref_n_cells_max, MAX_MULTI_TYPES = MAX_MULTI_TYPES,
        CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
        DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
    )

    for (param_name in names(numeric_params)) {
        param_value <- numeric_params[[param_name]]
        if (!is.numeric(param_value) ||
            length(param_value) != 1 ||
            is.na(param_value)) {
            stop("createRctd: ", param_name, " must be a numeric value")
        }
    }

    if (!is.null(cell_type_profiles)) {
        if (!is.matrix(cell_type_profiles)) {
            stop("createRctd: cell_type_profiles must be a matrix")
        }
        if (is.null(rownames(cell_type_profiles)) ||
            is.null(colnames(cell_type_profiles))) {
            stop(
                "createRctd: cell_type_profiles must have rownames (genes) ",
                "and colnames (cell types)"
            )
        }
    }

    if (!is.logical(keep_reference) || length(keep_reference) != 1) {
        stop("createRctd: keep_reference must be a logical value")
    }

    if (!is.null(class_df) && !is.data.frame(class_df)) {
        stop("createRctd: class_df must be a data frame")
    }

    if (!is.null(cell_type_names) &&
        (!is.character(cell_type_names) || length(cell_type_names) == 0)) {
        stop("createRctd: cell_type_names must be a non-empty character vector")
    }

    if (!is.logical(test_mode) || length(test_mode) != 1) {
        stop("createRctd: test_mode must be a logical value")
    }

    # Convert SummarizedExperiment to SpatialRNA
    spatialRNA <- summarizedExperimentToSpatialRNA(
        spatial_experiment, require_int = require_int
    )

    # Convert SummarizedExperiment to Reference
    reference <- NULL
    if (is.null(cell_type_profiles)) {
        reference <- summarizedExperimentToReference(
            reference_experiment, 
            cell_type_col = cell_type_col,
            require_int = require_int, 
            ref_n_cells_max = ref_n_cells_max, 
            ref_UMI_min = ref_UMI_min
        )
    }

    # Create configuration
    config <- list(
        gene_cutoff = gene_cutoff, fc_cutoff = fc_cutoff,
        gene_cutoff_reg = gene_cutoff_reg, fc_cutoff_reg = fc_cutoff_reg,
        UMI_min = UMI_min, UMI_min_sigma = UMI_min_sigma, max_cores = max_cores,
        N_epoch = 8, N_X = 50000, K_val = 100, N_fit = 1000, N_epoch_bulk = 30,
        MIN_CHANGE_BULK = 0.0001, MIN_CHANGE_REG = 0.001, UMI_max = UMI_max,
        pixel_count_min = pixel_count_min, MIN_OBS = gene_obs_min,
        MAX_MULTI_TYPES = MAX_MULTI_TYPES,
        CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
        DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
    )

    if (test_mode) {
        config <- list(
            gene_cutoff = .00125, fc_cutoff = 0.5, gene_cutoff_reg = 0.002,
            fc_cutoff_reg = 0.75, UMI_min = 1000, N_epoch = 1, N_X = 50000,
            K_val = 100, N_fit = 50, N_epoch_bulk = 4, MIN_CHANGE_BULK = 1,
            MIN_CHANGE_REG = 0.001, UMI_max = 200000, MIN_OBS = 3,
            max_cores = 1, pixel_count_min = 5, UMI_min_sigma = 300,
            MAX_MULTI_TYPES = MAX_MULTI_TYPES,
            CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
            DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
        )
    }

    # Create cell type info
    cell_type_info <- create_cell_type_info(
        reference = reference,
        cell_type_names = cell_type_names,
        cell_type_profiles = cell_type_profiles,
        ref_n_cells_min = ref_n_cells_min
    )

    # Downsample reference if needed
    if (!keep_reference && is.null(cell_type_profiles)) {
        reference <- create_downsampled_data(reference, n_samples = 5)
    }

    # Create puck and internal variables
    puck_and_vars <- create_puck_and_internal_vars(
        spatialRNA, cell_type_info, config, class_df
    )

    # Return RctdConfig object
    new(
        "RctdConfig",
        spatialRNA = puck_and_vars$puck,
        reference = reference,
        config = config,
        cell_type_info = cell_type_info,
        internal_vars = puck_and_vars$internal_vars
    )
}

#' Run RCTD algorithm to decompose cell type mixtures
#'
#' Robust Cell Type Decomposition (RCTD) is a computational method for
#' deconvolving cell type mixtures in spatial transcriptomics data. RCTD learns
#' cell type profiles from annotated RNA sequencing (RNA-seq) reference data
#' (\code{reference_experiment}) and uses these profiles to identify cell types
#' in spatial transcriptomic pixels (\code{spatial_experiment}) while accounting
#' for platform-specific effects. The RCTD algorithm has three modes suited for
#' different spatial technologies:
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
#' @inheritParams createRctd
#' @param rctd_mode character string specifying the RCTD mode:
#'   \code{"doublet"}, \code{"multi"}, or \code{"full"}
#'   (default: \code{"doublet"})
#'
#' @return A \code{\link[SpatialExperiment]{SpatialExperiment}} object
#'   containing the RCTD results with:
#'   \itemize{
#'     \item Three assays (one in full mode):
#'       \itemize{
#'         \item \code{weights}: Cell type proportions restricted according to
#'         the specified mode
#'         \item \code{weights_unconfident}: Cell type proportions restricted
#'         according to the specified mode, including unconfident predictions
#'         (not available in full mode)
#'         \item \code{weights_full}: Unrestricted cell type proportions (not
#'         available in full mode, use \code{weights} instead)
#'       }
#'     Assays have cell types as rows and pixels as columns, with values
#'     representing the proportion (0 to 1) of each cell type in each pixel.
#'     Assay columns sum to 1 (except for rejected pixels, which sum to 0).
#'     \item \code{spatialCoords} containing spatial coordinates for each pixel
#'     \item \code{colData} containing:
#'       \itemize{
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
#' # Run RCTD
#' results <- runRctd(
#'     spatial_spe, reference_se, rctd_mode = "doublet", max_cores = 1
#' )
#'
#' # Access the cell type proportions (cell types as rows, pixels as columns)
#' assay(results, "weights")
#'
#' # Check spot classifications for doublet mode
#' colData(results)$spot_class
#'
#' # Access spatial coordinates
#' head(spatialCoords(results))
#'
runRctd <- function(
    spatial_experiment, reference_experiment,
    rctd_mode = c("doublet", "multi", "full"), max_cores = 4,
    cell_type_col = "cell_type", require_int = TRUE, gene_cutoff = 0.000125,
    fc_cutoff = 0.5, gene_cutoff_reg = 0.0002, fc_cutoff_reg = 0.75,
    gene_obs_min = 3, pixel_count_min = 10, UMI_min = 100, UMI_max = 20000000,
    UMI_min_sigma = 300, ref_UMI_min = 100, ref_n_cells_min = 25,
    ref_n_cells_max = 10000, cell_type_profiles = NULL, keep_reference = FALSE,
    class_df = NULL, cell_type_names = NULL, MAX_MULTI_TYPES = 4,
    CONFIDENCE_THRESHOLD = 5, DOUBLET_THRESHOLD = 20, test_mode = FALSE
) {
    rctd_mode <- match.arg(rctd_mode)
    RCTD <- createRctd(
        spatial_experiment = spatial_experiment,
        reference_experiment = reference_experiment,
        cell_type_col = cell_type_col, max_cores = max_cores,
        require_int = require_int, gene_cutoff = gene_cutoff,
        fc_cutoff = fc_cutoff, gene_cutoff_reg = gene_cutoff_reg,
        fc_cutoff_reg = fc_cutoff_reg, gene_obs_min = gene_obs_min,
        pixel_count_min = pixel_count_min, UMI_min = UMI_min,
        UMI_max = UMI_max, UMI_min_sigma = UMI_min_sigma,
        ref_UMI_min = ref_UMI_min, ref_n_cells_min = ref_n_cells_min,
        ref_n_cells_max = ref_n_cells_max,
        cell_type_profiles = cell_type_profiles,
        keep_reference = keep_reference,
        class_df = class_df, cell_type_names = cell_type_names,
        MAX_MULTI_TYPES = MAX_MULTI_TYPES,
        CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD,
        DOUBLET_THRESHOLD = DOUBLET_THRESHOLD, test_mode = test_mode
    )
    RCTD <- fitBulk(RCTD)
    RCTD <- choose_sigma_c(RCTD)
    RCTD <- fitPixels(RCTD, rctd_mode = rctd_mode)
}
