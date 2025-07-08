#' Calculates weight matrix from doublet mode results
#'
#' Used during \code{\link{initialize.subtypes}} when unsupervised was run on
#' doublet mode
#'
#' @param RCTD a \code{\linkS4class{RctdConfig}} object
#' @return a matrix of doublet mode weights
#' @export
weights_from_results <- function(RCTD) {
    df <- RCTD@results$results_df
    wd <- RCTD@results$weights_doublet
    singlets <- rownames(df[df$spot_class == "singlet", ])
    doublets <- rownames(df[df$spot_class == "doublet_certain", ])
    barcodes <- c(singlets, doublets)
    cell_types <- levels(df$first_type)
    weights <- matrix(0, nrow = length(barcodes), ncol = length(cell_types))
    rownames(weights) <- barcodes
    colnames(weights) <- cell_types
    for (b in singlets) {
        weights[b, as.character(df[b, "first_type"])] <- 1
    }
    for (b in doublets) {
        weights[b, as.character(df[b, "first_type"])] <- wd[b, "first_type"]
        weights[b, as.character(df[b, "second_type"])] <- wd[b, "second_type"]
    }
    weights
}

#' Calculates the weight change between two \code{\linkS4class{RctdConfig}}
#' objects
#'
#' Used during \code{\link{iter.optim}} as the termination criterion
#'
#' @param RCTD1 a \code{\linkS4class{RctdConfig}} object
#' @param RCTD2 a \code{\linkS4class{RctdConfig}} object
#' @return \code{cell_type_info}, which is ready to run the
#'   \code{\link{create.RCTD.unsupervised}} function
#' @export
weights_change <- function(RCTD1, RCTD2) {
    weights1 <- as.matrix(t(assay(RCTD1, "weights")))
    weights2 <- as.matrix(t(assay(RCTD2, "weights")))
    norm(weights1 - weights2) / dim(weights1)[1]
}

#' Generates \code{cell_type_info} from cluster assignments on a
#' \code{\linkS4class{SpatialRNA}} object
#'
#' @param puck a \code{\linkS4class{SpatialRNA}} object
#' @param clusters a \code{data.frame} with barcodes as rownames and cluster
#'   assignments under a \code{cell_types} column
#' @return \code{cell_type_info}, which is ready to run the
#'   \code{\link{create.RCTD.unsupervised}} function
#' @export
cell_type_info_from_clusters <- function(spatial_experiment, clusters) {
    spatial_experiment <- spatial_experiment[, rownames(clusters), drop = FALSE]
    counts <- getCounts(spatial_experiment, "spatial_experiment")
    cell_types <- clusters$cell_types
    names(cell_types) <- rownames(clusters)

    nUMI <- colData(spatial_experiment)$nUMI
    if (is.null(nUMI)) {
        nUMI <- colSums(counts)
    }
    cell_type_info <- computeCellTypeInfo(counts, cell_types, nUMI)
    list(info = cell_type_info, renorm = cell_type_info)
}

#' Generates \code{cell_type_info} from CSIDE on a fitted
#' \code{\linkS4class{RctdConfig}} object
#'
#' @param RCTD a \code{\linkS4class{RctdConfig}} object to run CSIDE
#' @param cell_types the cell types used for CSIDE. If null, all cell types in
#'   \code{cell_type_info} will be chosen.
#' @param cell_type_threshold (Default 10) minimum number of singlets required
#'   per cell type.
#' @param gene_list the genes to compute expression for. If null, all genes will
#'   be included.
#' @return \code{cell_type_info}, which is ready to run the
#'   \code{\link{create.RCTD.unsupervised}} function
#' @export
cell_type_info_from_de <- function(
    RCTD, cell_types = NULL, gene_list = NULL, cell_type_threshold = 25) {
    if (is.null(gene_list)) {
        gene_list <- rownames(RCTD@originalSpatialRNA@counts)
    }
    RCTD@originalSpatialRNA <- restrict_counts(
        RCTD@originalSpatialRNA, gene_list,
        UMI_thresh = 0, UMI_max = Inf
    )
    barcodes <- intersect(
        names(RCTD@spatialRNA@nUMI), colnames(RCTD@spatialRNA@counts)
    )
    X <- as.matrix(rep(1, length(barcodes)))
    rownames(X) <- barcodes
    if (is.null(cell_types)) {
        cell_type_count <- aggregate_cell_types(
            RCTD, barcodes,
            doublet_mode = (RCTD@config$doublet_mode == "doublet")
        )
        cell_types <- names(which(cell_type_count >= cell_type_threshold))
    }
    RCTD <- runCside(
        RCTD, X, barcodes, cell_types,
        doublet_mode = (RCTD@config$doublet_mode == "doublet"), logs = TRUE,
        cell_type_threshold = cell_type_threshold, gene_threshold = -1,
        sigma_gene = FALSE, test_genes_sig = FALSE, params_to_test = 1
    )
    cell_type_info <- list(
        as.data.frame(exp(RCTD@de_results$gene_fits$mean_val)),
        cell_types, length(cell_types)
    )
    return(list(info = cell_type_info, renorm = cell_type_info))
}

#' Generates \code{cell_type_info} from singlet means on a fitted
#' \code{\linkS4class{RctdConfig}} object from the original
#' \code{\linkS4class{SpatialRNA}} object
#'
#' @param RCTD a \code{\linkS4class{RctdConfig}} object
#' @param cell_types the cell types used for CSIDE. If null, all cell types in
#'   \code{cell_type_info} will be chosen.
#' @param cell_type_threshold (Default 10) minimum number of singlets required
#'   per cell type.
#' @param gene_list the genes to compute expression for. If null, all genes will
#'   be included.
#' @return \code{cell_type_info}, which is ready to run the
#'   \code{\link{create.RCTD.unsupervised}} function
#' @export
cell_type_info_from_singlets <- function(
    RCTD, cell_types = NULL, gene_list = NULL, cell_type_threshold = 25) {
    if (is.null(gene_list)) {
        gene_list <- rownames(RCTD@originalSpatialRNA@counts)
    }
    results <- RCTD@results$results_df
    singlets <- results[results$spot_class == "singlet", ]
    barcodes <- rownames(singlets)
    cell_type_list <- singlets$first_type
    names(cell_type_list) <- barcodes
    if (is.null(cell_types)) {
        cell_types <- names(which(table(cell_type_list) > cell_type_threshold))
    }
    cell_type_info <- computeCellTypeInfo(
        RCTD@originalSpatialRNA@counts[gene_list, barcodes], cell_type_list,
        RCTD@originalSpatialRNA@nUMI[barcodes],
        cell_type_names = cell_types
    )
    return(list(info = cell_type_info, renorm = cell_type_info))
}

#' Generates marker genes from C-SIDE means on a fitted
#' \code{\linkS4class{RctdConfig}} object
#'
#' @param RCTD a \code{\linkS4class{RctdConfig}} object
#' @param cell_types the cell types used to find marker genes. If null, all cell
#'   types in \code{RCTD@internal_vars_de$cell_types} will be chosen.
#' @param fdr false discovery rate for marker genes.
#' @param fc_thresh minimum \code{log_e} fold change required for a gene to be
#'   considered a marker gene.
#' @param expr_thresh minimum expression threshold, as normalized expression
#'   (proportion out of 1, or counts per 1).
#' @param max_sigma maximum standard error of gene expression mean.
#' @return a dataframe of marker gene names, expressions, and p-values for each
#'   cell type
#' @export
get_marker_genes <- function(
    RCTD, cell_types = NULL, fdr = 0.05, fc_thresh = 1.25, expr_thresh = .00015,
    max_sigma = 1) {
    # filter by singlets + doublets for cell types
    # (don't use uncertain doublets)
    mean_val <- RCTD@de_results$gene_fits$mean_val
    s_mat <- RCTD@de_results$gene_fits$s_mat
    dimnames(s_mat)[[2]] <- RCTD@internal_vars_de$cell_types
    if (is.null(cell_types)) {
        cell_types <- RCTD@internal_vars_de$cell_types
    }
    mean_val <- mean_val[, cell_types]
    s_mat <- s_mat[, cell_types]
    p_mat <- matrix(nrow = dim(mean_val)[1], ncol = dim(mean_val)[2])
    dimnames(p_mat) <- dimnames(mean_val)
    for (gene in dimnames(mean_val)[[1]]) {
        mean_list <- mean_val[gene, ]
        if (max(mean_list) < log(expr_thresh)) next
        se_list <- s_mat[gene, ]
        i <- which.max(mean_list)
        cell_type <- cell_types[i]
        other_cell_types <- cell_types[-i]
        zscores <- (
            (mean_list[cell_type] - mean_list[other_cell_types] - fc_thresh) /
                sqrt(
                    se_list[cell_type]^2 +
                        pmin(max_sigma, se_list[other_cell_types])^2
                )
        )
        p_vals <- pnorm(-zscores)
        p_mat[gene, cell_type] <- max(p_vals)
    }
    marker_gene_list <- vector("list", length(cell_types))
    names(marker_gene_list) <- cell_types
    for (cell_type in cell_types) {
        type_gene_list <- sort(p_mat[, cell_type][!is.na(p_mat[, cell_type])])
        n_genes <- length(type_gene_list)
        thresh <- seq_len(n_genes) * fdr / n_genes
        if (sum(type_gene_list < thresh) > 0) {
            n_sig_genes <- (
                n_genes - match(TRUE, rev(type_gene_list < thresh)) + 1
            )
        } else {
            n_sig_genes <- 0
        }
        marker_gene_list[[cell_type]] <- type_gene_list[0:n_sig_genes]
        message(
            "get_marker_genes: ", cell_type, " found marker genes: ",
            n_sig_genes
        )
    }
    marker_data <- lapply(
        marker_gene_list, as.data.frame,
        stringsAsFactors = FALSE
    )
    marker_data <- dplyr::bind_rows(marker_data, .id = "cell_type")
    colnames(marker_data)[2] <- "p_value"
    marker_data$expr <- exp(apply(mean_val[rownames(marker_data), ], 1, max))
    get_log_fc <- function(vec) {
        i <- which.max(vec)
        max <- vec[i]
        other <- vec[-i]
        return(mean(max - other))
    }
    marker_data$log_fc <- apply(
        mean_val[rownames(marker_data), ], 1, get_log_fc
    )
    marker_data <- marker_data[, c("cell_type", "expr", "log_fc", "p_value")]
    return(marker_data)
}

RICE_estimate_expr <- function(myRCTD) {
    # start with myRCTD (output of RICE)
    barcodes <- intersect(
        names(myRCTD@spatialRNA@nUMI), colnames(myRCTD@spatialRNA@counts)
    )
    cell_types <- myRCTD@cell_type_info$info[[2]]
    myRCTD <- run.CSIDE.intercept(myRCTD,
        barcodes = barcodes, cell_types = cell_types,
        doublet_mode = myRCTD@internal_vars_de$doublet_mode, sigma_gene = FALSE,
        gene_threshold = 0, cell_type_threshold = 0
    )
    myRCTD # annotated with gene expression for all genes
}
