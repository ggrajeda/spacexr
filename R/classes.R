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
#'   \code{results <- runRctd(spatial, reference)}
#'
#' @docType package
#' @name spacexr-package
#' @aliases spacexr spacexr-package
"_PACKAGE"

#' Generic accessor for coords slot
#'
#' @param object An object with a coords slot
#' @return The coords slot of the object
#' @keywords internal
setGeneric("coords", function(object) standardGeneric("coords"))

#' Generic setter for coords slot
#'
#' @param object An object with a coords slot
#' @param value The new value for the coords slot
#' @return The updated object
#' @keywords internal
setGeneric("coords<-", function(object, value) standardGeneric("coords<-"))

#' Generic accessor for counts slot
#'
#' @param object An object with a counts slot
#' @return The counts slot of the object
#' @keywords internal
setGeneric("counts", function(object) standardGeneric("counts"))

#' Generic setter for counts slot
#'
#' @param object An object with a counts slot
#' @param value The new value for the counts slot
#' @return The updated object
#' @keywords internal
setGeneric("counts<-", function(object, value) standardGeneric("counts<-"))

#' Generic accessor for nUMI slot
#'
#' @param object An object with a nUMI slot
#' @return The nUMI slot of the object
#' @keywords internal
setGeneric("nUMI", function(object) standardGeneric("nUMI"))

#' Generic setter for nUMI slot
#'
#' @param object An object with a nUMI slot
#' @param value The new value for the nUMI slot
#' @return The updated object
#' @keywords internal
setGeneric("nUMI<-", function(object, value) standardGeneric("nUMI<-"))

#' Generic accessor for cell_types slot
#'
#' @param object An object with a cell_types slot
#' @return The cell_types slot of the object
#' @keywords internal
setGeneric("cell_types", function(object) standardGeneric("cell_types"))

#' Generic setter for cell_types slot
#'
#' @param object An object with a cell_types slot
#' @param value The new value for the cell_types slot
#' @return The updated object
#' @keywords internal
setGeneric(
    "cell_types<-", function(object, value) standardGeneric("cell_types<-")
)

#' Generic accessor for spatialRNA slot
#'
#' @param object An object with a spatialRNA slot
#' @return The spatialRNA slot of the object
#' @keywords internal
setGeneric("spatialRNA", function(object) standardGeneric("spatialRNA"))

#' Generic setter for spatialRNA slot
#'
#' @param object An object with a spatialRNA slot
#' @param value The new value for the spatialRNA slot
#' @return The updated object
#' @keywords internal
setGeneric(
    "spatialRNA<-", function(object, value) standardGeneric("spatialRNA<-")
)

#' Generic accessor for reference slot
#'
#' @param object An object with a reference slot
#' @return The reference slot of the object
#' @keywords internal
setGeneric("reference", function(object) standardGeneric("reference"))

#' Generic setter for reference slot
#'
#' @param object An object with a reference slot
#' @param value The new value for the reference slot
#' @return The updated object
#' @keywords internal
setGeneric(
    "reference<-", function(object, value) standardGeneric("reference<-")
)

#' Generic accessor for config slot
#'
#' @param object An object with a config slot
#' @return The config slot of the object
#' @keywords internal
setGeneric("config", function(object) standardGeneric("config"))

#' Generic setter for config slot
#'
#' @param object An object with a config slot
#' @param value The new value for the config slot
#' @return The updated object
#' @keywords internal
setGeneric("config<-", function(object, value) standardGeneric("config<-"))

#' Generic accessor for cell_type_info slot
#'
#' @param object An object with a cell_type_info slot
#' @return The cell_type_info slot of the object
#' @keywords internal
setGeneric("cell_type_info", function(object) standardGeneric("cell_type_info"))

#' Generic setter for cell_type_info slot
#'
#' @param object An object with a cell_type_info slot
#' @param value The new value for the cell_type_info slot
#' @return The updated object
#' @keywords internal
setGeneric(
    "cell_type_info<-",
    function(object, value) standardGeneric("cell_type_info<-")
)

#' Generic accessor for internal_vars slot
#'
#' @param object An object with an internal_vars slot
#' @return The internal_vars slot of the object
#' @keywords internal
setGeneric("internal_vars", function(object) standardGeneric("internal_vars"))

#' Generic setter for internal_vars slot
#'
#' @param object An object with an internal_vars slot
#' @param value The new value for the internal_vars slot
#' @return The updated object
#' @keywords internal
setGeneric(
    "internal_vars<-",
    function(object, value) standardGeneric("internal_vars<-")
)

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
#' data(rctdSim)
#'
#' # Create SpatialRNA object
#' spatial_rna <- createSpatialRNA(
#'     as.data.frame(rctdSim$spatial_rna_coords),
#'     rctdSim$spatial_rna_counts
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

#' @rdname coords
#' @keywords internal
setMethod("coords", "SpatialRNA", function(object) {
    object@coords
})

#' @rdname coords
#' @keywords internal
#' @importFrom methods validObject
setMethod("coords<-", "SpatialRNA", function(object, value) {
    object@coords <- value
    validObject(object)
    object
})

#' @rdname counts
#' @keywords internal
setMethod("counts", "SpatialRNA", function(object) {
    object@counts
})

#' @rdname counts
#' @keywords internal
setMethod("counts<-", "SpatialRNA", function(object, value) {
    object@counts <- value
    validObject(object)
    object
})

#' @rdname nUMI
#' @keywords internal
setMethod("nUMI", "SpatialRNA", function(object) {
    object@nUMI
})

#' @rdname nUMI
#' @keywords internal
setMethod("nUMI<-", "SpatialRNA", function(object, value) {
    object@nUMI <- value
    validObject(object)
    object
})

#' @param object SpatialRNA object
#' @rdname SpatialRNA-class
#' @export
setMethod("show", "SpatialRNA", function(object) {
    cat("SpatialRNA object with:\n")
    cat(sprintf("- %d pixels\n", ncol(counts(object))))
    cat(sprintf("- %d genes\n", nrow(counts(object))))
    cat(sprintf("- %.2f mean UMIs per pixel\n", mean(nUMI(object))))
    cat(sprintf("- Spatial coordinates range: x[%.2f, %.2f], y[%.2f, %.2f]\n",
        min(coords(object)$x), max(coords(object)$x),
        min(coords(object)$y), max(coords(object)$y)))
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
#' data(rctdSim)
#'
#' cell_types <- rctdSim$reference_cell_types[["cell_type"]]
#' names(cell_types) <- rownames(rctdSim$reference_cell_types)
#' reference <- createReference(rctdSim$reference_counts, cell_types)
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

#' @rdname cell_types
#' @keywords internal
setMethod("cell_types", "Reference", function(object) {
    object@cell_types
})

#' @rdname cell_types
#' @keywords internal
setMethod("cell_types<-", "Reference", function(object, value) {
    object@cell_types <- value
    validObject(object)
    object
})

#' @rdname counts
#' @keywords internal
setMethod("counts", "Reference", function(object) {
    object@counts
})

#' @rdname counts
#' @keywords internal
setMethod("counts<-", "Reference", function(object, value) {
    object@counts <- value
    validObject(object)
    object
})

#' @rdname nUMI
#' @keywords internal
setMethod("nUMI", "Reference", function(object) {
    object@nUMI
})

#' @rdname nUMI
#' @keywords internal
setMethod("nUMI<-", "Reference", function(object, value) {
    object@nUMI <- value
    validObject(object)
    object
})

#' @param object Reference object
#' @rdname Reference-class
#' @export
setMethod("show", "Reference", function(object) {
    cat("Reference object with:\n")
    cat(sprintf("- %d cells\n", ncol(counts(object))))
    cat(sprintf("- %d genes\n", nrow(counts(object))))
    cat(sprintf("- %.2f mean UMIs per cell\n", mean(nUMI(object))))
    cat("- Cell types:\n")
    type_counts <- table(cell_types(object))
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
#' @keywords internal
setClass("RctdConfig",
    slots = c(
        spatialRNA = "SpatialRNA",
        reference = "ReferenceOrNull",
        config = "list",
        cell_type_info = "list",
        internal_vars = "list"
    ),
    prototype = list(
        spatialRNA = NULL,
        reference = NULL,
        config = list(),
        cell_type_info = list(info = NULL, renorm = NULL),
        internal_vars = list()
    )
)

#' @rdname spatialRNA
#' @keywords internal
setMethod("spatialRNA", "RctdConfig", function(object) {
    object@spatialRNA
})

#' @rdname spatialRNA
#' @keywords internal
setMethod("spatialRNA<-", "RctdConfig", function(object, value) {
    object@spatialRNA <- value
    validObject(object)
    object
})

#' @rdname reference
#' @keywords internal
setMethod("reference", "RctdConfig", function(object) {
    object@reference
})

#' @rdname reference
#' @keywords internal
setMethod("reference<-", "RctdConfig", function(object, value) {
    object@reference <- value
    validObject(object)
    object
})

#' @rdname config
#' @keywords internal
setMethod("config", "RctdConfig", function(object) {
    object@config
})

#' @rdname config
#' @keywords internal
setMethod("config<-", "RctdConfig", function(object, value) {
    object@config <- value
    validObject(object)
    object
})

#' @rdname cell_type_info
#' @keywords internal
setMethod("cell_type_info", "RctdConfig", function(object) {
    object@cell_type_info
})

#' @rdname cell_type_info
#' @keywords internal
setMethod("cell_type_info<-", "RctdConfig", function(object, value) {
    object@cell_type_info <- value
    validObject(object)
    object
})

#' @rdname internal_vars
#' @keywords internal
setMethod("internal_vars", "RctdConfig", function(object) {
    object@internal_vars
})

#' @rdname internal_vars
#' @keywords internal
setMethod("internal_vars<-", "RctdConfig", function(object, value) {
    object@internal_vars <- value
    validObject(object)
    object
})

#' @param object RCTD configuration object
#' @rdname RctdConfig-class
#' @export
#' @keywords internal
setMethod("show", "RctdConfig", function(object) {
    cat("RctdConfig object with:\n")
    cat("\nSpatial data (processed):\n")
    cat(sprintf("- %d pixels\n", ncol(counts(spatialRNA(object)))))
    cat(sprintf("- %d genes\n", nrow(counts(spatialRNA(object)))))

    cat("\nReference data:\n")
    if (is.null(reference(object))) {
        cat("NULL\n")
    } else {
        cat(sprintf("- %d cells\n", ncol(counts(reference(object)))))
        cat(sprintf(
            "- %d cell types\n", length(levels(cell_types(reference(object))))
        ))
    }

    cat("\nConfiguration:\n")
    for (param in names(config(object))) {
        cat(sprintf("- %s: %s\n", param, 
            if(is.atomic(config(object)[[param]])) 
                paste(config(object)[[param]], collapse = ", ") 
            else "..."
        ))
    }
})
