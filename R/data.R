#' Simulated spatial transcriptomics dataset
#'
#' A simulated dataset containing both reference single-cell RNA-seq data and
#' spatial transcriptomics data. The dataset includes 750 genes across 3 cell
#' types, with 50\% of genes being differentially expressed between cell types.
#' The spatial data consists of two kinds of cell type mixtures, documented
#' below.
#'
#' @format A list containing five components:
#' \describe{
#'   \item{reference_counts}{A matrix of simulated reference counts with 750
#'   rows (genes) and 75 columns (25 samples per cell type). Gene names are of
#'   the form \code{"g1"}, \code{"g2"}, etc.}
#'   \item{reference_cell_types}{A data frame specifying the cell type
#'   (\code{"ct1"}, \code{"ct2"}, \code{"ct3"}) for each reference sample.}
#'   \item{spatial_rna_coords}{A matrix with columns \code{x} and \code{y}
#'   giving the coordinates of each spatial transcriptomics pixel.}
#'   \item{spatial_rna_counts}{A matrix of simulated spatial transcriptomics
#'   counts with 750 rows (genes) and 12 columns (spatial locations).}
#'   \item{proportions_se}{A SummarizedExperiment object containing the true
#'   cell type proportions for each spatial location. The \code{weights} assay
#'   contains a matrix with 12 rows (spatial locations) and 3 columns
#'   (cell types).}
#' }
#'
#' @details The dataset was generated using the following parameters:
#' \itemize{
#'   \item 750 genes, with 50\% probability of differential expression
#'   \item 3 cell types with 25 reference samples each
#'   \item 12 spatial locations total:
#'   \itemize{
#'     \item 6 locations with mixture type 1 (90\% \code{ct1}, 10\% \code{ct2})
#'     \item 6 locations with mixture type 2 (20\% \code{ct1}, 40\% \code{ct2},
#'     40\% \code{ct3})
#'   }
#' }
#'
#' Base expression levels were sampled uniformly between 0 and 10.
#' Differentially expressed genes were randomly selected to be either
#' up-regulated (2x) or down-regulated (0.5x) in specific cell types.
#' Final counts were generated using a Poisson distribution.
#'
#' @usage data(simRctd)
#'
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
#' # Access true cell type proportions
#' true_proportions <- assay(simRctd$proportions_se, "weights")
#'
"simRctd"
