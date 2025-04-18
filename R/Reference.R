#' \code{\linkS4class{Reference}} object constructor
#'
#' @param counts matrix (or dgCMatrix) of gene expression counts from RNA-seq
#'   data, with genes as rows and cells as columns (named by cell barcode)
#' @param cell_types factor vector containing cell type annotations for each
#'   cell in the reference (identified by barcode). The factor levels represent
#'   the possible cell types.
#' @param nUMI optional, numeric vector of total UMI counts per cell (identified
#'   by barcode). If not provided, nUMI will be calculated as the column sums of
#'   the counts matrix.
#' @param min_UMI numeric, minimum UMI count for cells to be included in the
#'   reference (default: 100)
#' @param n_max_cells numeric, maximum number of cells per cell type. Will
#'   downsample if this number is exceeded. (default: 10,000)
#' @param require_int logical, whether counts and nUMI are required to be
#'   integers (default: \code{TRUE})
#'
#' @return \code{\linkS4class{Reference}} object
#'
#' @importFrom methods new
#' @export
#' @keywords internal
#' @examples
#' data(rctdSim)
#'
#' cell_types <- rctdSim$reference_cell_types[["cell_type"]]
#' names(cell_types) <- rownames(rctdSim$reference_cell_types)
#' reference <- createReference(rctdSim$reference_counts, cell_types)
#'
createReference <- function(
    counts, cell_types,
    nUMI = NULL,
    require_int = TRUE, n_max_cells = 10000, min_UMI = 100
) {
    counts <- check_counts(
        counts, "Reference", require_2d = TRUE, require_int = require_int
    )
    if (is.null(nUMI)) {
        nUMI <- colSums(counts)
        names(nUMI) <- colnames(counts)
    } else {
        check_UMI(
            nUMI, "Reference",
            require_2d = TRUE, require_int = require_int, min_UMI = min_UMI
        )
    }
    checkCellTypes(cell_types)

    barcodes <- names(which(nUMI >= min_UMI))
    if (length(barcodes) < 1) {
        stop(
            "Reference: no barcodes were included with nUMI at least min_UMI. ",
            "Please lower the parameter min_UMI or ensure that cells have ",
            "sufficient UMI counts."
        )
    }

    missing_cell_types <- names(which(table(cell_types[barcodes]) == 0))
    if (length(missing_cell_types) > 0) {
        warning(
            "Reference: missing cell types with no occurences: ",
            paste(missing_cell_types, collapse = ", ")
        )
    }

    reference <- new(
        "Reference",
        cell_types = cell_types[barcodes],
        counts = counts[, barcodes, drop = FALSE],
        nUMI = nUMI[barcodes]
    )
    maybeDownsample(reference, n_max_cells)
}

checkCellTypes <- function(cell_types) {
    if (!is(cell_types, "factor")) {
        stop(
            "Reference: cell_types is not a factor. Please format cell_types ",
            "as a factor."
        )
    }
    if (length(cell_types) < 2) {
        stop(
            "Reference: length(cell_types) < 2. cell_types needs to be a ",
            "factor with length equal to the number of cells."
        )
    }
    if (length(levels(cell_types)) < 2) {
        stop(
            "Reference: length(levels(cell_types)) < 2. cell_types needs to ",
            "be a factor with multiple levels for each cell type."
        )
    }
    if (is.null(names(cell_types))) {
        stop(
            "Reference: names(cell_types) is null. Please enter cell barcodes ",
            "as names"
        )
    }
    if (min(unlist(lapply(levels(cell_types), nchar))) == 0) {
        stop(
            "Reference: levels(cell_types) contains a cell type with an ",
            'empty name "". Please ensure all cell type names are nonempty ',
            "strings."
        )
    }
    cell_type_names <- levels(cell_types)
    prohibited_character <- "/"
    if (any(grepl(prohibited_character, cell_type_names))) {
        stop(
            "Reference: levels(cell_types) contains a cell type with name ",
            "containing prohibited character ", prohibited_character,
            ". Please rename this cell type."
        )
    }
}

maybeDownsample <- function(reference, n_max_cells = 10000) {
    cur_count <- max(table(cell_types(reference)))
    if (cur_count <= n_max_cells) {
        return(reference)
    }
    warning(
        "Reference: number of cells per cell type is ", cur_count,
        ", larger than maximum allowable of ", n_max_cells,
        ". Downsampling number of cells to: ", n_max_cells
    )
    cell_types_keep <- levels(cell_types(reference))
    index_keep <- c()
    i <- 1
    repeat{
        new_index <- which(cell_types(reference) == cell_types_keep[i])
        new_samples <- min(n_max_cells, length(new_index))
        index_keep <- c(
            index_keep,
            sample(new_index, new_samples, replace = FALSE)
        )
        if ((i <- i + 1) > length(cell_types_keep)) {
            break
        }
    }
    counts(reference) <- counts(reference)[, index_keep]
    cell_types(reference) <- cell_types(reference)[index_keep]
    cell_types(reference) <- droplevels(cell_types(reference))
    nUMI(reference) <- nUMI(reference)[index_keep]
    reference
}
