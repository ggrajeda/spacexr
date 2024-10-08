% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CSIDE_utils.R
\name{get_standard_errors}
\alias{get_standard_errors}
\title{On an RCTD object after running CSIDE, returns an array of standard errors of CSIDE coefficients}
\usage{
get_standard_errors(myRCTD)
}
\arguments{
\item{myRCTD}{an \code{\linkS4class{RCTD}} object with fitted CSIDE e.g. from the \code{\link{run.CSIDE}} function.}
}
\value{
a three-dimensional array representing CSIDE standard errors for each gene,
each coefficient, and each cell type.
}
\description{
The dimensions of the standard error array is N_genes x N_coefficients x N_cell_types
The N_coefficients are the number of explanatory variables in the CSIDE model
}
