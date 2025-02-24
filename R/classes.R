#' spacexr: Cell Type Identification in Spatial Transcriptomics
#'
#' @section Running RCTD:
#'
#'   To get started, create a \code{\link[SpatialExperiment]{SpatialExperiment}}
#'   object (called \code{spatial} here) for the spatial transcriptomics data
#'   and a \code{\link[SummarizedExperiment]{SummarizedExperiment}} object
#'   (called \code{reference} here) for the RNA-seq data. Then simply run RCTD
#'   as:
#'
#'   \code{rctd <- createRctd(spatial, reference)}
#'
#'   \code{results_se <- runRctd(rctd)}
#'
#' @docType package
#' @name spacexr-package
#' @aliases spacexr spacexr-package
"_PACKAGE"

#' Spatial transcriptomics data
#'
#' A class representing spatial transcriptomics data, where gene expression is
#' measured at fixed locations called "pixels" (also known as "spots" or
#' "beads"). RCTD estimates the proportions of different cell types on each
#' pixel.
#'
#' @slot coords data frame (or matrix) containing x and y coordinates for each
#'   pixel (identified by barcode)
#' @slot counts sparse matrix of gene expression counts, with genes as rows and
#'   pixels as columns (named by pixel barcode)
#' @slot nUMI numeric vector of total UMI counts per pixel (identified by
#'   barcode)
#'
#' @importClassesFrom Matrix Matrix dgCMatrix
#' @export
#' @keywords internal
#' @examples
#' data(simRctd)
#'
#' # Create SpatialRNA object
#' spatial_rna <- SpatialRNA(
#'     as.data.frame(simRctd$spatial_rna_coords),
#'     simRctd$spatial_rna_counts
#' )
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

#' @param object SpatialRNA object
#' @rdname SpatialRNA-class
#' @export
setMethod("show", "SpatialRNA", function(object) {
    cat("SpatialRNA object with:\n")
    cat(sprintf("- %d pixels\n", ncol(object@counts)))
    cat(sprintf("- %d genes\n", nrow(object@counts)))
    cat(sprintf("- %.2f mean UMIs per pixel\n", mean(object@nUMI)))
    cat(sprintf("- Spatial coordinates range: x[%.2f, %.2f], y[%.2f, %.2f]\n",
        min(object@coords$x), max(object@coords$x),
        min(object@coords$y), max(object@coords$y)))
})

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
#' @slot nUMI numeric vector of total UMI counts per cell (identified by
#'   barcode)
#'
#' @importClassesFrom Matrix Matrix dgCMatrix
#' @export
#' @keywords internal
#' @examples
#' data(simRctd)
#'
#' cell_types <- simRctd$reference_cell_types[["cell_type"]]
#' names(cell_types) <- rownames(simRctd$reference_cell_types)
#' reference <- Reference(simRctd$reference_counts, cell_types)
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

#' @param object Reference object
#' @rdname Reference-class
#' @export
setMethod("show", "Reference", function(object) {
    cat("Reference object with:\n")
    cat(sprintf("- %d cells\n", ncol(object@counts)))
    cat(sprintf("- %d genes\n", nrow(object@counts)))
    cat(sprintf("- %.2f mean UMIs per cell\n", mean(object@nUMI)))
    cat("- Cell types:\n")
    type_counts <- table(object@cell_types)
    for (type in names(type_counts)) {
        cat(sprintf("  %s: %d cells\n", type, type_counts[type]))
    }
})

setClassUnion("ReferenceOrNull", c("Reference", "NULL"))

#' RCTD algorithm configuration
#'
#' An RCTD configuration created via the \code{\link{createRctd}} function.
#' Users can run RCTD by passing this object to the \code{\link{runRctd}}
#' function.
#'
#' @slot spatialRNA a \code{\linkS4class{SpatialRNA}} object containing the
#'   processed spatial transcriptomics data for analysis
#' @slot originalSpatialRNA a \code{\linkS4class{SpatialRNA}} object containing
#'   the complete, unfiltered spatial dataset
#' @slot reference a \code{\linkS4class{Reference}} object containing the
#'   annotated reference data
#' @slot config a list of configuration options for the RCTD algorithm, set via
#'   \code{\link{createRctd}}
#' @slot cell_type_info a named list containing cell type expression profiles
#'   with two components: \code{info} (raw profiles from reference data) and
#'   \code{renorm} (profiles normalized to match the spatial data)
#' @slot internal_vars a list of internal variables used during the RCTD
#'   analysis
#'
#' @import Matrix
#' @importClassesFrom Matrix Matrix dgCMatrix
#' @export
setClass("RCTD",
    slots = c(
        spatialRNA = "SpatialRNA",
        originalSpatialRNA = "SpatialRNA",
        reference = "ReferenceOrNull",
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

#' @param object RCTD configuration object
#' @rdname RCTD-class
#' @export
setMethod("show", "RCTD", function(object) {
    cat("RCTD object with:\n")
    cat("\nSpatial data (processed):\n")
    cat(sprintf("- %d pixels\n", ncol(object@spatialRNA@counts)))
    cat(sprintf("- %d genes\n", nrow(object@spatialRNA@counts)))

    cat("\nReference data:\n")
    if (is.null(object@reference)) {
        cat("NULL\n")
    } else {
        cat(sprintf("- %d cells\n", ncol(object@reference@counts)))
        cat(sprintf(
            "- %d cell types\n", length(levels(object@reference@cell_types))
        ))
    }

    cat("\nConfiguration:\n")
    for (param in names(object@config)) {
        cat(sprintf("- %s: %s\n", param, 
            if(is.atomic(object@config[[param]])) 
                paste(object@config[[param]], collapse = ", ") 
            else "..."
        ))
    }
})
