#' Computes cell type profiles in a scRNA-seq dataset
#'
#' Computes averaged normalized expression (summing to 1) for all cells within a
#' cell type
#'
#' @param raw.data a Digital Gene Expression matrix, with gene names as rownames
#'   and single cells as columns (barcodes for colnames)
#' @param cell_types a named list of cell type assignment for each cell in
#'   \code{raw.data}
#' @param cell_type_names a list of cell type names to compute profiles for. If
#'   NULL, uses the levels of \code{cell_types}
#' @param nUMI a named list of total UMI count for each cell in \code{raw.data}
#'
#' @return Returns \code{cell_type_info}, a list of three elements: (1)
#'   \code{cell_type_means} (a data_frame (genes by cell types) for mean
#'   normalized expression) (2) \code{cell_type_names} (a list of cell type
#'   names) and (3) the number of cell types
#' @keywords internal
get_cell_type_info <- function(
    raw.data, cell_types, nUMI, cell_type_names = NULL
) {
    if (is.null(cell_type_names)) {
        cell_type_names <- levels(cell_types)
    }

    n_cell_types <- length(cell_type_names)

    get_cell_mean <- function(cell_type) {
        cell_type_data <- raw.data[, cell_types == cell_type, drop = FALSE]
        cell_type_umi <- nUMI[cell_types == cell_type]
        normData <- sweep(cell_type_data, 2, cell_type_umi, `/`)
        rowSums(normData) / dim(normData)[2]
    }

    cell_means_vec <- vapply(
        as.character(cell_type_names),
        get_cell_mean,
        numeric(nrow(raw.data)),
        USE.NAMES = TRUE
    )
    cell_type_means <- as.data.frame(cell_means_vec)
    return(list(cell_type_means, cell_type_names, n_cell_types))
}

#' Normalizes cell type profiles to a target dataset
#'
#' renormalizes \code{cell_type_means} to have average the same as the puck. The
#' average for each gene is weighted by cell type proportions given by
#' \code{proportions}.
#'
#' @param proportions a named list (for each cell type) of proportion of the
#'   cell type on the bulk dataset (not constrained to sum to 1)
#' @param gene_list a list of genes to be used for the normalization
#' @param puck an object of type \linkS4class{SpatialRNA}, the target dataset
#' @param cell_type_means a data_frame (genes by cell types) for mean normalized
#'   expression (see \code{\link{get_cell_type_info}})
#' @return Returns \code{cell_type_means}, a data_frame (genes by cell types)
#'   for mean normalized cell type expression profiles in which platform effects
#'   have been removed to match the \linkS4class{SpatialRNA} data.
#' @keywords internal
get_norm_ref <- function(puck, cell_type_means, gene_list, proportions) {
    bulk_vec <- rowSums(counts(puck))
    weight_avg <- rowSums(sweep(
        cell_type_means[gene_list, , drop = FALSE],
        2,
        proportions / sum(proportions),
        "*"
    ))
    target_means <- bulk_vec[gene_list] / sum(nUMI(puck))
    sweep(
        cell_type_means[gene_list, , drop = FALSE],
        1,
        weight_avg / target_means,
        "/"
    )
}
