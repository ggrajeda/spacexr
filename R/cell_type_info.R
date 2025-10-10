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
computeCellTypeInfo <- function(
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
    return(list(cell_type_means, cell_type_names))
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
referenceToCellTypeInfo <- function(reference, cell_type_names, CELL_MIN = 25) {
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
            "Need a minimum of ", CELL_MIN, " cells for each cell type in the ",
            "reference"
        )
    }
    cell_type_info <- computeCellTypeInfo(
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
createCellTypeInfo <- function(
    reference = NULL, cell_type_names = NULL, 
    cell_type_profiles = NULL, ref_n_cells_min = 25
) {
    if (is.null(cell_type_profiles)) {
        if (is.null(cell_type_names)) {
            cell_type_names <- levels(cell_types(reference))
        }
        cell_type_info <- list(
            info = referenceToCellTypeInfo(
                reference,
                cell_type_names = cell_type_names,
                CELL_MIN = ref_n_cells_min
            ),
            renorm = NULL
        )
    } else {
        cell_type_names <- colnames(cell_type_profiles)
        cell_type_info <- list(
            info = list(cell_type_profiles, cell_type_names),
            renorm = NULL
        )
    }
    cell_type_info
}
