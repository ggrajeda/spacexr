#' spacexr: Cell Type Identification in Spatial Transcriptomics
#'
#' @section Running RCTD:
#'
#'   To get started, create a \code{\linkS4class{SpatialRNA}} object (called
#'   \code{puck} here) for the spatial transcriptomics data and a
#'   \code{\linkS4class{Reference}} object (called \code{reference} here) for
#'   the RNA-seq data. Then simply run RCTD as:
#'
#'   \code{rctd <- create.RCTD(puck, reference)}
#'
#'   \code{rctd_se <- run.RCTD(rctd)}
#'
#' @docType package
#' @name spacexr-package
#' @aliases spacexr spacexr-package
"_PACKAGE"

#' Spatial transcriptomics data
#'
#' A class representing spatial transcriptomics data, where gene expression is
#' measured at fixed locations called "pixels" (also known as "spots" or
#' "beads"), which may contain mixtures of multiple cells. RCTD estimates the
#' proportions of different cell types in each pixel.
#'
#' @slot coords data frame (or matrix) containing x and y coordinates for each
#'   pixel (identified by barcode)
#' @slot counts sparse matrix of gene expression counts, with genes as rows and
#'   pixels as columns (named by pixel barcode)
#' @slot nUMI numeric vector of total UMI counts per pixel (identified by
#'   barcode)
#' 
#' @export
#' @import Matrix
#' @importClassesFrom Matrix Matrix dgCMatrix
#' @examples
#' data(rctd_simulation)
#'
#' # Create SpatialRNA object
#' spatial_rna <- SpatialRNA(
#'     rctd_simulation$spatial_rna_coords,
#'     rctd_simulation$spatial_rna_counts
#' )
#'
#' # Access object slots using generics
#' head(coords(spatial_rna))  # Get spatial coordinates
#' dim(counts(spatial_rna))   # Get gene expression matrix dimensions
#' head(nUMI(spatial_rna))    # Get total UMI counts per pixel
#' 
setClass("SpatialRNA",
    slots = c(
        coords = "data.frame",
        counts = "dgCMatrix",
        nUMI = "numeric"
    ),
    prototype = list(
        coords = data.frame(NULL),
        counts = NULL,
        nUMI = NA_integer_
    )
)

#' Get spatial coordinates
#'
#' @param x A SpatialRNA object
#' @return A data frame containing x and y coordinates for each pixel
#' @examples
#' data(rctd_simulation)
#' 
#' spatial_rna <- SpatialRNA(
#'     rctd_simulation$spatial_rna_coords,
#'     rctd_simulation$spatial_rna_counts
#' )
#' 
#' # Get coordinates for all pixels
#' pixel_coords <- coords(spatial_rna)
#' head(pixel_coords)
#' 
#' x_coords <- pixel_coords$x
#' y_coords <- pixel_coords$y
#' 
setGeneric("coords", function(x) standardGeneric("coords"))
#' @export
setMethod("coords", "SpatialRNA", function(x) x@coords)

#' Get gene expression counts
#'
#' @param x A SpatialRNA or Reference object
#' @return A sparse matrix of gene expression counts
#' @examples
#' data(rctd_simulation)
#' 
#' ## SpatialRNA Example
#' spatial_rna <- SpatialRNA(
#'     rctd_simulation$spatial_rna_coords,
#'     rctd_simulation$spatial_rna_counts
#' )
#' 
#' spatial_rna_counts <- counts(spatial_rna)
#' dim(spatial_rna_counts)
#' 
#' # Basic operations with counts matrices
#' total_genes <- nrow(spatial_rna_counts)
#' total_pixels <- ncol(spatial_rna_counts)
#' gene_names <- rownames(spatial_rna_counts)
#' 
#' ## Reference Example
#' reference <- Reference(
#'     rctd_simulation$reference_counts,
#'     rctd_simulation$reference_cell_types
#' )
#' 
#' reference_counts <- counts(reference)
#' dim(reference_counts)
#' 
setGeneric("counts", function(x) standardGeneric("counts"))
#' @export
setMethod("counts", "SpatialRNA", function(x) x@counts)

#' Get total UMI counts
#'
#' @param x A SpatialRNA or Reference object
#' @return A numeric vector of total UMI counts per pixel/cell
#' @examples
#' data(rctd_simulation)
#' 
#' ## SpatialRNA Example
#' spatial_rna <- SpatialRNA(
#'     rctd_simulation$spatial_rna_coords,
#'     rctd_simulation$spatial_rna_counts
#' )
#' 
#' # Get UMI counts per pixel
#' pixel_umis <- nUMI(spatial_rna)
#' head(pixel_umis)
#' summary(pixel_umis)  # Basic statistics
#' 
#' ## Reference Example
#' reference <- Reference(
#'     rctd_simulation$reference_counts,
#'     rctd_simulation$reference_cell_types
#' )
#' 
#' # Get UMI counts per cell in reference
#' cell_umis <- nUMI(reference)
#' head(cell_umis)
#' summary(cell_umis)  # Basic statistics
#' 
setGeneric("nUMI", function(x) standardGeneric("nUMI"))
#' @export
setMethod("nUMI", "SpatialRNA", function(x) x@nUMI)

#' RNA-seq reference data
#'
#' A class representing annotated RNA sequencing data used as a reference to
#' learn cell type profiles. The reference can come from single-nucleus RNA
#' sequencing (snRNA-seq), single-cell RNA sequencing (scRNA-seq), or cell
#' type-specific bulk RNA sequencing. RCTD uses these profiles to estimate cell
#' type proportions in spatial transcriptomics data.
#'
#' @slot cell_types factor vector containing cell type annotations for each cell
#'   in the reference (identified by barcode)
#' @slot counts sparse matrix of gene expression counts from RNA-seq data, with
#'   genes as rows and cells as columns (named by cell barcode)
#' @slot nUMI numeric vector of total UMI counts per cell (identified by barcode)
#' 
#' @importClassesFrom Matrix Matrix dgCMatrix
#' @export
#' @examples
#' data(rctd_simulation)
#'
#' # Create Reference object
#' reference <- Reference(
#'     rctd_simulation$reference_counts,
#'     rctd_simulation$reference_cell_types
#' )
#'
#' # Access object slots using generics
#' table(cell_types(reference))  # Count occurrences of each cell type
#' dim(counts(reference))        # Get gene expression matrix dimensions
#' head(nUMI(reference))         # Get total UMI counts per cell
#' 
setClass("Reference",
    slots = c(
        cell_types = "factor",
        counts = "dgCMatrix",
        nUMI = "numeric"
    ),
    prototype = list(
        cell_types = NULL,
        counts = NULL,
        nUMI = NA_integer_
    )
)

#' Get cell type annotations
#'
#' @param x A Reference object
#' @return A factor vector containing cell type annotations for each cell
#' @examples
#' data(rctd_simulation)
#' 
#' reference <- Reference(
#'     rctd_simulation$reference_counts,
#'     rctd_simulation$reference_cell_types
#' )
#' 
#' # Get cell type annotations
#' cell_types_vec <- cell_types(reference)
#' 
#' # Basic analysis of cell types
#' head(cell_types_vec)
#' levels(cell_types_vec)
#' table(cell_types_vec)
#' 
setGeneric("cell_types", function(x) standardGeneric("cell_types"))
#' @export
setMethod("cell_types", "Reference", function(x) x@cell_types)

#' @export
#' @rdname counts
setMethod("counts", "Reference", function(x) x@counts)

#' @export
#' @rdname nUMI
setMethod("nUMI", "Reference", function(x) x@nUMI)

#' Input to the RCTD algorithm
#'
#' Created using the \code{\link{create.RCTD}} function, a user can run RCTD
#' using the \code{\link{run.RCTD}} function.
#'
#' @slot spatialRNA a \code{\linkS4class{SpatialRNA}} object containing the
#'   processed spatial transcriptomics data for analysis
#' @slot originalSpatialRNA a \code{\linkS4class{SpatialRNA}} object containing
#'   the complete, unfiltered spatial dataset
#' @slot reference a \code{\linkS4class{Reference}} object containing the
#'   annotated reference data
#' @slot config a list of configuration options for the RCTD algorithm, set via
#'   \code{\link{create.RCTD}}
#' @slot cell_type_info a named list containing cell type expression profiles
#'   with two components: \code{info} (raw profiles from reference data) and
#'   \code{renorm} (profiles normalized to match the spatial data)
#' @slot internal_vars a list of internal variables used during the RCTD
#'   analysis
#'
#' @export
#' @import Matrix
#' @importClassesFrom Matrix Matrix dgCMatrix
setClass("RCTD",
    slots = c(
        spatialRNA = "SpatialRNA",
        originalSpatialRNA = "SpatialRNA",
        reference = "Reference",
        config = "list",
        cell_type_info = "list",
        internal_vars = "list"
    ),
    prototype = list(
        spatialRNA = NULL,
        originalSpatialRNA = NULL,
        reference = NULL,
        config = list(),
        cell_type_info = list(info = NULL, renorm = NULL),
        internal_vars = list()
    )
)
