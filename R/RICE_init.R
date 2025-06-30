#' Generates \code{cell_type_info} from Seurat clustering on a
#' \code{\linkS4class{SpatialRNA}} object
#'
#' @param puck a \code{\linkS4class{SpatialRNA}} object to run clustering on
#' @param resolution (Default 0.7) the resolution to be used during Seurat
#'   clustering
#' @param SCT whether or not to use \code{SCTransform} for count normalization
#' @return \code{cell_type_info}, which is ready to run the
#'   \code{\link{create.RCTD.unsupervised}} function
#' @export
initialize.clusters <- function(
    spatial_experiment, resolution = 0.7, SCT = TRUE) {
    message("Begin: initialize.clusters")
    counts <- getCounts(spatial_experiment, "spatial_experiment")
    data <- Seurat::CreateSeuratObject(counts = counts, assay = "Spatial")

    if (SCT) {
        data <- Seurat::SCTransform(data, assay = "Spatial", verbose = FALSE)
        data <- Seurat::RunPCA(data, assay = "SCT", verbose = FALSE)
    } else {
        data <- Seurat::NormalizeData(data)
        data <- Seurat::FindVariableFeatures(data)
        data <- Seurat::ScaleData(data)
        data <- Seurat::RunPCA(data)
    }
    data <- Seurat::FindNeighbors(data, dims = seq_len(30), verbose = FALSE)
    data <- Seurat::FindClusters(data, resolution = resolution, verbose = FALSE)
    clusters <- data@meta.data["seurat_clusters"]
    colnames(clusters) <- "cell_types"
    message(
        "End: initialize.clusters, ", length(levels(clusters$cell_types)),
        " clusters generated"
    )
    cell_type_info_from_clusters(spatial_experiment, clusters)
}

#' Creates an \code{\linkS4class{RctdConfig}} object ready to be run on subtype
#' mode from a fitted \code{\linkS4class{RctdConfig}} object
#'
#' @param RCTD a \code{\linkS4class{RctdConfig}} object with cell types fitted
#' @param cell_types cell supertypes to find subtypes for
#' @param resolution (Default 0.7) the resolution to be used during Seurat
#'   clustering for subtype initialization
#' @param gene_list gene list to be used for subtype mode. If null, uses highly
#'   expressed supertype genes
#' @return an \code{\linkS4class{RctdConfig}} object, which is ready to run the
#'   \code{\link{run.unsupervised}} function on subtype mode
#' @export
initialize.subtypes <- function(
    RCTD, cell_types, resolution = 0.7, gene_list = NULL) {
    message("initialize.subtypes: gathering results")
    if (RCTD@config$doublet_mode == "doublet") {
        weights <- weights_from_results(RCTD)
    } else if (RCTD@config$doublet_mode == "full") {
        weights <- as.matrix(RCTD@results$weights)
    }
    weights <- weights[rowSums(as.matrix(weights[, cell_types])) > 0, ]
    cell_types_present <- apply(
        weights[, setdiff(colnames(weights), cell_types)],
        1,
        function(x) names(which(x > 0))
    )
    barcodes <- rownames(weights)
    singlet_barcodes <- barcodes[rowSums(as.matrix(weights[, cell_types])) == 1]
    singlet_puck <- restrict_puck(RCTD@originalSpatialRNA, singlet_barcodes)
    message("initialize.subtypes: getting subtype gene expression profiles: ")
    subtype_info <- initialize.clusters(singlet_puck, resolution = resolution)
    subtype_info$info[[2]] <- vapply(
        subtype_info$info[[2]],
        function(x) paste0("subtype_", x),
        character(1)
    )
    colnames(subtype_info$info[[1]]) <- subtype_info$info[[2]]
    message("initialize.subtypes: getting supertype gene expression profiles: ")
    supertype_info <- cell_type_info_from_singlets(RCTD)
    if (is.null(gene_list)) {
        message(
            "initialize.subtypes: getting supertype highly expressed genes: "
        )
        gene_list <- get_de_genes(
            supertype_info$info, RCTD@originalSpatialRNA,
            cell_types = cell_types, fc_thresh = 1.25, expr_thresh = 1.25e-4,
            MIN_OBS = 3
        )
    }
    info <- cbind(
        supertype_info$info[[1]][gene_list, ],
        subtype_info$info[[1]][gene_list, ]
    )
    info <- info[, setdiff(colnames(info), cell_types)]
    cell_type_info <- list(info, colnames(info), length(colnames(info)))
    RCTD <- createRctdNoRef(
        restrict_puck(RCTD@originalSpatialRNA, barcodes),
        list(info = cell_type_info, renorm = cell_type_info),
        gene_list = gene_list
    )
    cell_types_present <- lapply(
        cell_types_present, function(x) c(x, subtype_info$info[[2]])
    )

    barcodes <- colnames(RCTD@spatialRNA@counts)
    weights <- weights[, setdiff(colnames(weights), cell_types)]
    # TODO: Might need to fix this!
    subtype_weights <- replicate(
        subtype_info$info[[3]],
        (1 - rowSums(weights)) / subtype_info$info[[3]]
    )
    colnames(subtype_weights) <- subtype_info$info[[2]]
    weights <- cbind(weights, subtype_weights)
    weights <- weights[barcodes, cell_type_info[[2]]]

    RCTD@internal_vars$subtypes <- subtype_info$info[[2]]
    RCTD@internal_vars$cell_types_present <- cell_types_present[barcodes]
    RCTD@results$weights <- weights
    RCTD
}
