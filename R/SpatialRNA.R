fake_coords <- function(counts) {
    coords <- data.frame(as.matrix(Matrix(0, nrow = dim(counts)[2], ncol = 2)))
    colnames(coords) <- c("x", "y")
    rownames(coords) <- colnames(counts)
    return(coords)
}


#' Creates a SpatialRNA object from a 10x Genomics Visium `outs` directory
#'
#' Given a SpatialRNA directory 10x Genomics Visium `outs` directory and returns
#' a SpatialRNA object.
#'
#' @param datadir (string) full path to the 10x Genomics Visium `outs` directory
#' @return Returns a \code{\linkS4class{SpatialRNA}} object containing the
#'   coordinates and counts from the input files
#' @keywords internal
read.VisiumSpatialRNA <- function(datadir) {
    coords.path <- Sys.glob(paths = file.path(datadir, "spatial/tissue_positions*"))
    coords <- readr::read_csv(
        file = coords.path,
        col_names = ifelse(
            test = basename(coords.path) == "tissue_positions.csv",
            yes = TRUE,
            no = FALSE
        )
    )
    colnames(coords) <- c("barcodes", "in_tissue", "x", "y", "pxl_col_in_fullres", "pxl_row_in_fullres")
    coords <- tibble::column_to_rownames(coords, var = "barcodes")
    counts <- Seurat::Read10X_h5(paste0(datadir, "/filtered_feature_bc_matrix.h5"))
    puck <- SpatialRNA(coords[, c("x", "y")], counts)
    restrict_puck(puck, colnames(puck@counts))
}

#' Creates a SpatialRNA object from a coords and counts file
#'
#' Warning: this function is provided out of convenience for experienced users,
#' but we can not provide direct support for debugging file input errors. If you
#' are obtaining errors from this method, we recommend a less error-prone
#' procedure of loading in your coords and counts matrices in first and then
#' using the `SpatialRNA` constructor function, which will systematically check
#' for errors in the inputs.
#'
#' The coords matrix needs to be formated as columns (barcodes, x, y)
#'
#' @param datadir (character) full path to input directory
#' @param count_file (character) file name of the counts csv file (genes by
#'   pixels matrix)
#' @param coords_file (character) file name of the coords csv file (pixels by
#'   (barcodes, x, y) matrix)
#' @return Returns a \code{\linkS4class{SpatialRNA}} object containing the
#'   coordinates and counts from the input files
#' @keywords internal
read.SpatialRNA <- function(datadir, count_file = "counts.csv", coords_file = "coords.csv") {
    coords <- readr::read_csv(file = paste(datadir, coords_file, sep = "/"))
    counts <- data.table::fread(file = paste(datadir, count_file, sep = "/"), check.names = TRUE)
    counts <- tibble::as_tibble(counts)
    colnames(coords)[2] <- "x" # renaming xcoord -> x
    colnames(coords)[3] <- "y" # renaming ycoord -> y
    counts <- tibble::column_to_rownames(counts, var = colnames(counts)[1])
    # rownames(counts) = counts[,1]
    coords <- tibble::column_to_rownames(coords, var = "barcodes")
    # rownames(coords) <- coords$barcodes
    coords$barcodes <- NULL
    puck <- SpatialRNA(coords, as(as(counts, "matrix"), "dgCMatrix"))
    restrict_puck(puck, colnames(puck@counts))
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
#' @param use_fake_coords logical, FALSE by default. If true, the 'coords'
#'   parameter will be ignored, and replaced with a placeholder coords matrix.
#' @param require_int logical, TRUE by default. If true, requires counts and
#'   nUMI to be integers.
#'
#' @return \code{\linkS4class{SpatialRNA}} object
#'
#' @importFrom methods new
#' @export
#' @examples
#' data(rctd_simulation)
#'
#' spatial_rna <- SpatialRNA(
#'     rctd_simulation$spatial_rna_coords,
#'     rctd_simulation$spatial_rna_counts
#' )
#' 
SpatialRNA <- function(
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
    if (sum(nUMI[barcodes] != colSums(counts[, barcodes])) > 0) {
        warning(
            "SpatialRNA: nUMI does not match colSums of counts. If this is ",
            "unintended, please correct this discrepancy. If this is ",
            "intended, there is no problem."
        )
    }
    spatial_rna <- new(
        "SpatialRNA",
        coords = coords[barcodes, ],
        counts = counts[, barcodes],
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



#' Restricts a SpatialRNA object to a subset of genes (and applies a UMI
#' threshold)
#'
#' @param puck a \code{\linkS4class{SpatialRNA}} object
#' @param gene_list a list of gene names
#' @param UMI_thresh minimum UMI per pixel
#' @param UMI_max maximum UMI per pixel
#' @param counts_thresh minimum counts per pixel (for genes in gene_list)
#' @return Returns a \code{\linkS4class{SpatialRNA}} with counts filtered based
#'   on UMI threshold and gene list
#' @keywords internal
restrict_counts <- function(
    puck, gene_list,
    UMI_thresh = 1, UMI_max = 20000, counts_thresh = 1
) {
    counts_tot <- colSums(puck@counts[gene_list, ])
    keep_loc <- (
        (puck@nUMI >= UMI_thresh) &
        (puck@nUMI <= UMI_max) &
        (counts_tot >= counts_thresh)
    )
    puck@counts <- puck@counts[gene_list, keep_loc]
    puck@nUMI <- puck@nUMI[keep_loc]
    return(puck)
}

#' Restricts a SpatialRNA object to a subset of pixels
#'
#' Given a \code{\linkS4class{SpatialRNA}} object and a list of barcodes
#' (pixels), will return a \code{\linkS4class{SpatialRNA}} object restricted to
#' the barcodes.
#'
#' @param puck a \code{\linkS4class{SpatialRNA}} object
#' @param barcodes a list of barcode names, a subset of
#'   \code{rownames(puck@coords)}
#' @return Returns a \code{\linkS4class{SpatialRNA}} object subsampled to the
#'   barcodes
#' @keywords internal
restrict_puck <- function(puck, barcodes) {
    barcodes <- intersect(colnames(puck@counts), barcodes)
    puck@counts <- puck@counts[, barcodes]
    puck@nUMI <- puck@nUMI[barcodes]
    puck@coords <- puck@coords[barcodes, ]
    return(puck)
}
