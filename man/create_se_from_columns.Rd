% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/postProcessing.R
\name{create_se_from_columns}
\alias{create_se_from_columns}
\title{Converts a list of RCTD results to a SummarizedExperiment}
\usage{
create_se_from_columns(
  RCTD,
  results,
  weights_col = "all_weights",
  character_cols = c(),
  logical_cols = c(),
  numeric_cols = c(),
  list_cols = c()
)
}
\arguments{
\item{RCTD}{RCTD object}

\item{results}{List of results (with named entries) for each pixel}

\item{weights_col}{Name of list entry containing the cell type weights}

\item{character_cols}{Names of list entries containing a character(1)}

\item{logical_cols}{Names of list entries containing a logical(1)}

\item{numeric_cols}{Names of list entries containing a numeric(1)}

\item{list_cols}{Names of list entries containing a list}
}
\value{
SummarizedExperiment containing RCTD results
}
\description{
The SummarizedExperiment contains an assay with the cell type weights.
Additional information (e.g., x and y coords) are stored in the row data,
which will contain the entries in the results list specified by the *_cols
arguments.
}
\keyword{internal}
