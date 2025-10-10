#' Convert a SummarizedExperiment to a SpatialRNA object
#'
#' @inheritParams createRctd
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
    spatial_name <- "spatial_experiment"
    counts <- getCounts(spatial_experiment, spatial_name)
    nUMI <- colData(spatial_experiment)$nUMI
    if (!is.null(nUMI)) {
        names(nUMI) <- colnames(counts)
    }
    createSpatialRNA(
        coords, counts, nUMI = nUMI,
        use_fake_coords = use_fake_coords, require_int = require_int
    )
}

#' Create RCTD configuration object
#' 
#' Used internally by \code{\link{runRctd}}.
#' 
#' Default value of max_cores is set to 1 so that devtools::check() does not
#' complain about parallelism in examples.
#' 
#' @inheritParams runRctd
#' 
#' @return RCTD configuration
#' 
#' @export
#' @keywords internal
#' @inherit fitPixels examples
createRctdConfig <- function(
    rctd_data, max_cores = 1, max_multi_types = 4, confidence_threshold = 5,
    doublet_threshold = 20
) {
    spatial_rna <- summarizedExperimentToSpatialRNA(
        rctd_data$spatial_experiment, require_int = FALSE
    )

    config <- rctd_data$config
    config$max_cores <- max_cores
    config$max_multi_types <- max_multi_types
    config$confidence_threshold <- confidence_threshold
    config$doublet_threshold <- doublet_threshold

    RCTD <- new(
        "RctdConfig",
        spatialRNA = spatial_rna,
        config = config,
        cell_type_info = rctd_data$cell_type_info,
        internal_vars = rctd_data$internal_vars
    )
}

#' Run RCTD algorithm to decompose cell type mixtures
#'
#' Robust Cell Type Decomposition (RCTD) is a computational method for
#' deconvolving cell type mixtures in spatial transcriptomics data. RCTD learns
#' cell type profiles from annotated RNA sequencing (RNA-seq) reference data
#' and uses these profiles to identify cell types in spatial transcriptomic
#' pixels while accounting for platform-specific effects. The RCTD algorithm has
#' three modes suited for different spatial technologies:
#' \itemize{
#'   \item \code{doublet}: Fits at most two cell types per pixel and classifies
#'     each pixel as a \code{"singlet"} (one cell type) or \code{"doublet"}
#'     (two cell types). Best for high spatial resolution technologies like
#'     Slide-seq or MERFISH, where pixels are more likely to contain only 1 or
#'     2 cells.
#'   \item \code{multi}: Uses a greedy algorithm to fit up to
#'     \code{max_multi_types} cell types per pixel (default: 4). Best for lower
#'     resolution technologies like 100-micron Visium spots, which can contain
#'     more cell types.
#'   \item \code{full}: Fits any number of cell types per pixel without
#'     restrictions.
#' }
#'
#' @param rctd_data list containing \code{\link{createRctd}} output
#' @param rctd_mode character string specifying the RCTD mode:
#'   \code{"doublet"}, \code{"multi"}, or \code{"full"}
#'   (default: \code{"doublet"})
#' @param max_cores numeric, maximum number of cores to use for parallel
#'   processing (default: 4)
#' @param max_multi_types numeric, maximum number of cell types per pixel in
#'   multi mode (default: 4)
#' @param confidence_threshold numeric, minimum change in likelihood (compared
#'   to other cell types) necessary to determine a cell type identity with
#'   confidence (default: 5)
#' @param doublet_threshold numeric, penalty weight of predicting a doublet
#'   instead of a singlet for a pixel (default: 20)
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
#' # Filter spatial transcriptomics data and aggregate reference data
#' rctd_data <- createRctd(spatial_spe, reference_se)
#'
#' # Run RCTD on filtered data
#' results <- runRctd(rctd_data, rctd_mode = "doublet", max_cores = 1)
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
    rctd_data, rctd_mode = c("doublet", "multi", "full"), max_cores = 4,
    max_multi_types = 4, confidence_threshold = 5, doublet_threshold = 20
) {
    rctd_mode <- match.arg(rctd_mode)

    # Type validation
    if (!is.numeric(max_cores) ||
        max_cores <= 0 ||
        max_cores != as.integer(max_cores)) {
        stop("createRctd: max_cores must be a positive integer")
    }
    checkNumeric(max_multi_types, "max_multi_types")
    checkNumeric(confidence_threshold, "confidence_threshold")
    checkNumeric(doublet_threshold, "doublet_threshold")

    RCTD <- createRctdConfig(
        rctd_data, max_cores = max_cores, max_multi_types = max_multi_types,
        confidence_threshold = confidence_threshold,
        doublet_threshold = doublet_threshold
    )
    RCTD <- fitBulk(RCTD)
    RCTD <- chooseSigmaC(RCTD)
    RCTD <- fitPixels(RCTD, rctd_mode = rctd_mode)
}
