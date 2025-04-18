fake_coords <- function(counts) {
    coords <- data.frame(as.matrix(Matrix(0, nrow = dim(counts)[2], ncol = 2)))
    colnames(coords) <- c("x", "y")
    rownames(coords) <- colnames(counts)
    return(coords)
}

#' \code{\linkS4class{SpatialRNA}} object constructor
#'
#' @param coords data frame (or matrix) containing x and y coordinates for each
#'   pixel (identified by barcode)
#' @param counts matrix (or dgCMatrix) of gene expression counts, with genes as
#'   rows and pixels as columns (named by pixel barcode)
#' @param nUMI optional, numeric vector of total UMI counts per pixel
#'   (identified by barcode). If not provided, nUMI will be calculated as the
#'   column sums of the counts matrix.
#' @param use_fake_coords logical, whether the 'coords' parameter should be
#'   ignored and replaced with a placeholder coords matrix
#'   (default: \code{FALSE})
#' @param require_int logical, whether counts and nUMI are required to be
#'   integers (default: \code{TRUE})
#'
#' @return \code{\linkS4class{SpatialRNA}} object
#'
#' @importFrom methods new
#' @export
#' @keywords internal
#' @examples
#' data(rctdSim)
#'
#' spatial_rna <- createSpatialRNA(
#'     as.data.frame(rctdSim$spatial_rna_coords),
#'     rctdSim$spatial_rna_counts
#' )
#'
createSpatialRNA <- function(
    coords, counts,
    nUMI = NULL, use_fake_coords = FALSE, require_int = TRUE
) {
    counts <- check_counts(counts, "SpatialRNA", require_int = require_int)
    if (use_fake_coords) {
        coords <- fake_coords(counts)
    } else {
        coords <- check_coords(coords)
    }
    if (is.null(nUMI)) {
        nUMI <- colSums(counts)
        names(nUMI) <- colnames(counts)
    } else {
        check_UMI(nUMI, "SpatialRNA", require_int = require_int)
    }
    barcodes <- intersect(
        intersect(names(nUMI), rownames(coords)),
        colnames(counts)
    )
    if (length(barcodes) == 0) {
        stop(
            "SpatialRNA: coords, counts, and nUMI do not share any barcode ",
            "names. Please ensure that rownames(coords) matches ",
            "colnames(counts) and names(nUMI)"
        )
    }
    if (length(barcodes) < max(length(nUMI), dim(coords)[1], dim(counts)[2])) {
        warning(
            "SpatialRNA: some barcodes in nUMI, coords, or counts were not ",
            "mutually shared. Such barcodes were removed."
        )
    }
    spatial_rna <- new(
        "SpatialRNA",
        coords = coords[barcodes, , drop = FALSE],
        counts = counts[, barcodes, drop = FALSE],
        nUMI = nUMI[barcodes]
    )
    return(spatial_rna)
}

check_UMI <- function(
    nUMI, f_name,
    require_2d = FALSE, require_int = TRUE, min_UMI = 0
) {
    if (!is.atomic(nUMI)) {
        stop(
            f_name, ": nUMI is not an atomic vector. Please format nUMI as an ",
            "atomic vector."
        )
    }
    if (!is.numeric(nUMI)) {
        stop(f_name, ": nUMI is not numeric")
    }
    if (require_int) {
        if (max(abs(nUMI %% 1)) > 1e-6) {
            stop(f_name, ": nUMI does not contain integers")
        }
    }
    if (is.null(names(nUMI))) {
        stop(f_name, ": names(nUMI) is null. Please enter barcodes as names")
    }
    if (any(duplicated(names(nUMI)))) {
        stop(
            f_name, ": names(nUMI) contain duplicated elements. Please ensure ",
            "barcode names are unique"
        )
    }
    if (length(nUMI) == 1) {
        if (require_2d) {
            stop(
                f_name, ": the length of nUMI is 1, indicating only one cell ",
                "present. Please format nUMI so that the length is greater ",
                "than 1."
            )
        } else {
            warning(
                f_name, ": the length of nUMI is 1, indicating only one cell ",
                "present. If this is unintended, please format nUMI so that ",
                "the length is greater than 1."
            )
        }
    }
    if (max(nUMI) < min_UMI) {
        stop(
            f_name, ": nUMI values are all less than min_UMI = ", min_UMI,
            ". Please reduce the min_UMI parameter or ensure that cells have ",
            "sufficient UMI counts."
        )
    }
    if (min(nUMI) < min_UMI) {
        warning(
            f_name, ": some nUMI values are less than min_UMI = ", min_UMI,
            ", and these cells will be removed. Optionally, you may lower the ",
            "min_UMI parameter."
        )
    }
}

check_counts <- function(
    counts, f_name,
    require_2d = FALSE, require_int = TRUE
) {
    if (!is(counts, "dgCMatrix")) {
        if (!is(counts, "matrix")) {
            tryCatch(
                {
                    counts <- as(counts, "matrix")
                },
                error = function(e) {
                    stop(
                        f_name, ": could not convert counts to matrix using ",
                        "as(counts,'matrix'). Please check that counts is ",
                        "coercible to matrix, such as a matrix, dgCmatrix, or ",
                        "data.frame."
                    )
                }
            )
        }
        counts <- as(counts, "dgCMatrix")
    }
    if (dim(counts)[1] == 1) { # check more than one gene
        stop(
            f_name, ": the first dimension of counts is 1, indicating only ",
            "one gene present. Please format counts so that the first ",
            "dimension is greater than 1."
        )
    }
    if (dim(counts)[2] == 1) {
        if (require_2d) {
            stop(
                f_name, ": the second dimension of counts is 1, indicating ",
                "only one cell present. Please format counts so that the ",
                "second dimension is greater than 1."
            )
        } else {
            warning(
                f_name, ": the second dimension of counts is 1, indicating ",
                "only one cell/pixel present. If this is unintended, please ",
                "format counts so that the second dimension is greater than 1."
            )
        }
    }
    if (!is.numeric(counts[1, 1])) {
        stop(f_name, ": elements of counts are not numeric")
    }
    if (require_int) {
        if (max(abs(counts %% 1)) > 1e-6) {
            stop(f_name, ": counts does not contain integers")
        }
    }
    if (is.null(rownames(counts))) {
        stop(
            f_name,
            ": rownames(counts) is null. Please enter gene names as rownames"
        )
    }
    if (is.null(colnames(counts))) {
        stop(
            f_name,
            ": colnames(counts) is null. Please enter barcodes as colnames"
        )
    }
    if (any(duplicated(rownames(counts)))) {
        stop(
            f_name, ": rownames(counts) contain duplicated elements. Please ",
            "ensure gene names are unique"
        )
    }
    if (any(duplicated(colnames(counts)))) {
        stop(
            f_name, ": colnames(counts) contain duplicated elements. Please ",
            "ensure barcode names are unique"
        )
    }
    if (any(is.na(rownames(counts)))) {
        stop(
            f_name, ": rownames(counts) contain NA elements. Please ensure ",
            "gene names are valid"
        )
    }
    if (any(is.na(colnames(counts)))) {
        stop(
            f_name, ": colnames(counts) contain NA elements. Please ensure ",
            "barcode names are valid"
        )
    }
    return(counts)
}

#' @importFrom methods as is
check_coords <- function(coords) {
    if (!is(coords, "data.frame")) {
        tryCatch(
            {
                coords <- as(coords, "data.frame")
            },
            error = function(e) {
                stop(
                    "SpatialRNA: could not convert coords to data.frame using ",
                    "as(coords,'data.frame'). Please check that coords is ",
                    "coercible to data.frame, such as a matrix or data.frame."
                )
            }
        )
    }
    if (dim(coords)[2] != 2) { # check more than one gene
        stop(
            "SpatialRNA: the second dimension of coords is not 2. Please ",
            "enforce that dim(coords)[2] == 2 (x and y coordinates)."
        )
    }
    colnames(coords) <- c("x", "y")
    if (!(is.numeric(coords$x) & is.numeric(coords$y))) {
        stop("SpatialRNA: coords is not numeric")
    }
    if (is.null(rownames(coords))) {
        stop(
            "SpatialRNA: rownames(coords) is null. Please enter barcodes as ",
            "rownames"
        )
    }
    if (any(duplicated(rownames(coords)))) {
        stop(
            "SpatialRNA: rownames(coords) contain duplicated elements. Please ",
            "ensure barcode names are unique"
        )
    }
    return(coords)
}
