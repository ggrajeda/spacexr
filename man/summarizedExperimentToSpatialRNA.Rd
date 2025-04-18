% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_RCTD.R
\name{summarizedExperimentToSpatialRNA}
\alias{summarizedExperimentToSpatialRNA}
\title{Convert a SummarizedExperiment to a SpatialRNA object}
\usage{
summarizedExperimentToSpatialRNA(spatial_experiment, require_int = TRUE)
}
\arguments{
\item{spatial_experiment}{\code{\link[SummarizedExperiment]{SummarizedExperiment}} object (or any
derivative object, including \link[SpatialExperiment]{SpatialExperiment})
containing spatial transcriptomics data to be deconvolved. The object must
contain:
\itemize{
  \item An \code{assay} matrix of gene expression counts (genes as rows,
  pixels as columns) with unique gene names as row names and unique pixel
  barcodes as column names.
  \item Optionally, a \code{spatialCoords} matrix containing x and y
  coordinates for each pixel. If \code{spatial_experiment} does not have
  \code{spatialCoords}, dummy coordinates will be used.
  \item Optionally, a \code{colData} column named \code{nUMI} containing
  total UMI counts for each pixel. If not provided, \code{nUMI} will be
  calculated as the column sums of the counts matrix.
}}

\item{require_int}{logical, whether counts and nUMI are required to be
integers (default: \code{TRUE})}
}
\value{
\code{\linkS4class{SpatialRNA}} object
}
\description{
Convert a SummarizedExperiment to a SpatialRNA object
}
\keyword{internal}
