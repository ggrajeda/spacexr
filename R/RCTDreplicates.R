#' Creates an \code{\linkS4class{RCTD.replicates}} object across multiple \code{\linkS4class{SpatialRNA}} replicates
#'
#' Applies the \code{\link{create.RCTD}} function for each \code{\linkS4class{SpatialRNA}} replicate inputted using a
#' scRNA-seq reference \code{Reference} object.
#'
#' @param spatialRNA.replicates a list of multiple \code{\linkS4class{SpatialRNA}} objects to run RCTD on
#' @param reference a \code{\linkS4class{Reference}} object scRNA-seq reference used for RCTD
#' @param replicate_names a \code{character} vector of names for each replicate provided in \code{spatialRNA.replicates}
#' @param group_ids (default constant across replicates) a named integer vector (length number of replicates) containing the group id for each replicate.
#' Names represent the replicate names, and replicates of the same group will be expected to be more similar than
#' replicates across groups
#' @param gene_cutoff minimum normalized gene expression for genes to be included in the platform effect normalization step.
#' @param fc_cutoff minimum log-fold-change (across cell types) for genes to be included in the platform effect normalization step.
#' @param gene_cutoff_reg minimum normalized gene expression for genes to be included in the RCTD step.
#' @param fc_cutoff_reg minimum log-fold-change (across cell types) for genes to be included in the RCTD step.
#' @param UMI_min minimum UMI per pixel included in the analysis
#' @param UMI_max maximum UMI per pixel included in the analysis
#' @param UMI_min_sigma minimum UMI per pixel for the \link{choose_sigma_c} function
#' @param max_cores for parallel processing, the number of cores used. If set to 1, parallel processing is not used. The system will additionally be checked for
#' number of available cores.
#' @param class_df (optional) if not NULL, then a dataframe mapping each cell type to a cell class, so that RCTD will report confidence on the class level.
#' @param CELL_MIN_INSTANCE minimum number of cells required per cell type. Default 25, can be lowered if desired.
#' @param cell_type_names A list of cell types to be included from the reference. If NULL, uses all cell types
#' @param MAX_MULTI_TYPES (multi-mode only) Default 4, max number of cell types per pixel
#' @param keep_reference (Default FALSE) if true, keeps the \code{reference} object stored within the \code{\linkS4class{RCTD}} object
#' @param CONFIDENCE_THRESHOLD (Default 5) the minimum change in likelihood (compared to other cell types) necessary to determine a cell type identity with confidence
#' @param test_mode (Default FALSE) if true, runs RCTD with a preset test configuration
#' @param DOUBLET_THRESHOLD (Default 20) the penalty weight of predicting a doublet instead of a singlet for a pixel
#'
#' @return an \code{\linkS4class{RCTD.replicates}} object, which is ready to run the \code{\link{run.RCTD.replicates}} function
#' @export
#' @examples
#' set.seed(123456789)
#' data(rctd_simulation)
#'
#' reference <- Reference(
#'   rctd_simulation$reference_counts,
#'   rctd_simulation$reference_cell_types
#' )
#'
#' num_genes <- nrow(rctd_simulation$spatial_rna_counts)
#' num_pixels <- ncol(rctd_simulation$spatial_rna_counts)
#'
#' noise1 <- replicate(num_pixels, rpois(num_genes, lambda = 0.1))
#' spatial_rna1 <- SpatialRNA(
#'   rctd_simulation$spatial_rna_coords,
#'   rctd_simulation$spatial_rna_counts + noise1
#' )
#'
#' noise2 <- replicate(num_pixels, rpois(num_genes, lambda = 0.1))
#' spatial_rna2 <- SpatialRNA(
#'   rctd_simulation$spatial_rna_coords,
#'   rctd_simulation$spatial_rna_counts + noise2
#' )
#'
#' spatial_rna_replicates <- list(sr1 = spatial_rna1, sr2 = spatial_rna2)
#' rctd_replicates <- create.RCTD.replicates(
#'   spatial_rna_replicates,
#'   reference,
#'   names(spatial_rna_replicates)
#' )
#'
create.RCTD.replicates <- function(spatialRNA.replicates, reference, replicate_names, group_ids = NULL, max_cores = 4, test_mode = FALSE,
                                   gene_cutoff = 0.000125, fc_cutoff = 0.5, gene_cutoff_reg = 0.0002,
                                   fc_cutoff_reg = 0.75, UMI_min = 100, UMI_max = 20000000, UMI_min_sigma = 300,
                                   class_df = NULL, CELL_MIN_INSTANCE = 25, cell_type_names = NULL, MAX_MULTI_TYPES = 4,
                                   keep_reference = FALSE, CONFIDENCE_THRESHOLD = 5, DOUBLET_THRESHOLD = 20) {
  if (is.null(cell_type_names)) {
    cell_type_names <- levels(reference@cell_types)
  }
  cell_type_info <- process_cell_type_info(reference,
    cell_type_names = cell_type_names,
    CELL_MIN = CELL_MIN_INSTANCE
  )
  if (!is(spatialRNA.replicates, "list") ||
    any(!unlist(lapply(spatialRNA.replicates, function(x) is(x, "SpatialRNA"))))) {
    stop("create.RCTD.replicates: spatialRNA.replicates must be a list of SpatialRNA objects.")
  }
  if (length(spatialRNA.replicates) <= 1) {
    stop("create.RCTD.replicates: length(spatialRNA.replicates) <= 1. This object must be a list of at least two SpatialRNA objects.")
  }
  if (is.null(group_ids)) {
    group_ids <- rep(1, length(spatialRNA.replicates))
  }
  if (length(group_ids) != length(replicate_names)) {
    stop("create.RCTD.replicates: group_ids and replicate_names must both be the same length as the total number of replicates.")
  }
  if (length(group_ids) != length(spatialRNA.replicates)) {
    stop("create.RCTD.replicates: group_ids must be the same length as the total number of replicates.")
  }
  names(group_ids) <- replicate_names
  check_vector(group_ids, "group_ids", "create.RCTD.replicates", require_int = TRUE)
  if (min(table(group_ids)) < 2) {
    stop("create.RCTD.replicates: each group in group_ids must contain at least two replicates.")
  }
  RCTD.reps <- list()
  for (i in 1:length(spatialRNA.replicates)) {
    message(paste("create.RCTD.replicates: creating RCTD for replicate", i))
    RCTD.reps[[i]] <- create.RCTD(spatialRNA.replicates[[i]], reference,
      max_cores = max_cores, test_mode = test_mode,
      gene_cutoff = gene_cutoff, fc_cutoff = fc_cutoff, gene_cutoff_reg = gene_cutoff_reg,
      fc_cutoff_reg = fc_cutoff_reg, UMI_min = UMI_min, UMI_max = UMI_max, UMI_min_sigma = UMI_min_sigma,
      class_df = class_df, CELL_MIN_INSTANCE = CELL_MIN_INSTANCE, cell_type_names = cell_type_names, MAX_MULTI_TYPES = MAX_MULTI_TYPES,
      cell_type_profiles = cell_type_info[[1]], keep_reference = FALSE,
      CONFIDENCE_THRESHOLD = CONFIDENCE_THRESHOLD, DOUBLET_THRESHOLD = DOUBLET_THRESHOLD
    )
  }
  new("RCTD.replicates", RCTD.reps = RCTD.reps, group_ids = group_ids)
}

#' Runs the RCTD pipeline on a \code{\linkS4class{RCTD.replicates}} object
#'
#' For each \code{\linkS4class{SpatialRNA}} replicate in the \code{RCTD.replicates} object, runs the \code{\link{run.RCTD}}
#' function to assign cell types.
#'
#' If in doublet mode, fits at most two cell types per pixel. It classifies each pixel as 'singlet' or 'doublet' and searches for the cell types
#' on the pixel. If in full mode, can fit any number of cell types on each pixel. In multi mode, cell types are added using a greedy algorithm,
#' up to a fixed number.
#'
#' @param RCTD.replicates an \code{\linkS4class{RCTD.replicates}} object created using the \code{\link{create.RCTD.replicates}} function.
#' @param doublet_mode \code{character string}, either "doublet", "multi", or "full" on which mode to run RCTD. Please see above description.
#' @return an \code{\linkS4class{RCTD.replicates}} object containing the results of the RCTD algorithm. Please see \code{\linkS4class{RCTD.replicates}}
#' and \code{\linkS4class{RCTD}} documentation for more information on interpreting the content of this object.
#' @export
#' @examples
#' set.seed(123456789)
#' data(rctd_simulation)
#'
#' reference <- Reference(
#'   rctd_simulation$reference_counts,
#'   rctd_simulation$reference_cell_types
#' )
#'
#' num_genes <- nrow(rctd_simulation$spatial_rna_counts)
#' num_pixels <- ncol(rctd_simulation$spatial_rna_counts)
#'
#' noise1 <- replicate(num_pixels, rpois(num_genes, lambda = 0.1))
#' spatial_rna1 <- SpatialRNA(
#'   rctd_simulation$spatial_rna_coords,
#'   rctd_simulation$spatial_rna_counts + noise1
#' )
#'
#' noise2 <- replicate(num_pixels, rpois(num_genes, lambda = 0.1))
#' spatial_rna2 <- SpatialRNA(
#'   rctd_simulation$spatial_rna_coords,
#'   rctd_simulation$spatial_rna_counts + noise2
#' )
#'
#' spatial_rna_replicates <- list(sr1 = spatial_rna1, sr2 = spatial_rna2)
#' rctd_replicates <- create.RCTD.replicates(
#'   spatial_rna_replicates,
#'   reference,
#'   names(spatial_rna_replicates)
#' )
#'
#' rctd_replicate_results <- run.RCTD.replicates(
#'   rctd_replicates,
#'   doublet_mode = "doublet"
#' )
#' head(rctd_replicate_results@RCTD.reps[[1]]@results$results_df)
#'
run.RCTD.replicates <- function(RCTD.replicates, doublet_mode = "doublet") {
  if (!(doublet_mode %in% c("doublet", "multi", "full"))) {
    stop(paste0("run.RCTD.replicates: doublet_mode=", doublet_mode, " is not a valid choice. Please set doublet_mode=doublet, multi, or full."))
  }
  for (i in 1:length(RCTD.replicates@RCTD.reps)) {
    message(paste("run.RCTD.replicates: running RCTD for replicate", i))
    RCTD.replicates@RCTD.reps[[i]] <- run.RCTD(RCTD.replicates@RCTD.reps[[i]], doublet_mode = doublet_mode)
  }
  return(RCTD.replicates)
}

#' Creates an \code{\linkS4class{RCTD.replicates}} object across multiple \code{\linkS4class{RCTD}} objects
#'
#' @param RCTD.reps a list of multiple \code{\linkS4class{RCTD}} objects to merge into one \code{\linkS4class{RCTD.replicates}} object.
#' @param replicate_names a \code{character} vector of names for each replicate provided in \code{RCTD.reps}
#' @param group_ids (default constant across replicates) a named integer vector (length number of replicates) containing the group id for each replicate.
#' Names represent the replicate names, and replicates of the same group will be expected to be more similar than
#' replicates across groups.
#' @return an \code{\linkS4class{RCTD.replicates}} object, containing each \code{\linkS4class{RCTD}} object in \code{RCTD.reps}
#' @export
#' @examples
#' set.seed(123456789)
#' data(rctd_simulation)
#'
#' reference <- Reference(
#'   rctd_simulation$reference_counts,
#'   rctd_simulation$reference_cell_types
#' )
#'
#' num_genes <- nrow(rctd_simulation$spatial_rna_counts)
#' num_pixels <- ncol(rctd_simulation$spatial_rna_counts)
#'
#' noise1 <- replicate(num_pixels, rpois(num_genes, lambda = 0.1))
#' spatial_rna1 <- SpatialRNA(
#'   rctd_simulation$spatial_rna_coords,
#'   rctd_simulation$spatial_rna_counts + noise1
#' )
#' rctd1 <- create.RCTD(spatial_rna1, reference)
#'
#' noise2 <- replicate(num_pixels, rpois(num_genes, lambda = 0.1))
#' spatial_rna2 <- SpatialRNA(
#'   rctd_simulation$spatial_rna_coords,
#'   rctd_simulation$spatial_rna_counts + noise2
#' )
#' rctd2 <- create.RCTD(spatial_rna2, reference)
#'
#' rctds <- list(r1 = rctd1, r2 = rctd2)
#' rctd_replicates <- merge_RCTD_objects(rctds, names(rctds))
#'
merge_RCTD_objects <- function(RCTD.reps, replicate_names, group_ids = NULL) {
  if (!is(RCTD.reps, "list") || any(!unlist(lapply(RCTD.reps, function(x) is(x, "RCTD"))))) {
    stop("merge_RCTD_objects: RCTD.reps must be a list of RCTD objects.")
  }
  if (length(RCTD.reps) <= 1) {
    stop("merge_RCTD_objects: length(RCTD.replicates) <= 1. This object must be a list of at least two RCTD objects.")
  }
  if (is.null(group_ids)) {
    group_ids <- rep(1, length(RCTD.reps))
  }
  if (length(group_ids) != length(replicate_names)) {
    stop("merge_RCTD_objects: group_ids and replicate_names must both be the same length as the total number of replicates.")
  }
  if (length(group_ids) != length(RCTD.reps)) {
    stop("merge_RCTD_objects: group_ids must be the same length as the total number of replicates.")
  }
  names(group_ids) <- replicate_names
  check_vector(group_ids, "group_ids", "create.RCTD.replicates", require_int = TRUE)
  if (min(table(group_ids)) < 2) {
    stop("create.RCTD.replicates: each group in group_ids must contain at least two replicates.")
  }
  new("RCTD.replicates", RCTD.reps = RCTD.reps, group_ids = group_ids)
}
