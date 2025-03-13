#' Returns a list of differentially expressed genes
#'
#' For each cell type, chooses genes that have a minimum average normalized
#' expression in that cell type, and whose expression is larger in that cell
#' type than the average of all cell types. Filters out mitochondrial genes.
#'
#' @param puck an object of type \linkS4class{SpatialRNA}
#' @param cell_type_info cell type information and profiles of each cell,
#'   calculated from the scRNA-seq reference (see
#'   \code{\link{get_cell_type_info}})
#' @param MIN_OBS the minimum number of occurances of each gene in the
#'   SpatialRNA object.
#' @param fc_thresh minimum \code{log_e} fold change required for a gene.
#' @param expr_thresh minimum expression threshold, as normalized expression
#'   (proportion out of 1, or counts per 1).
#' @return a list of differntially expressed gene names
#' @keywords internal
get_de_genes <- function(
    cell_type_info, puck, fc_thresh = 1.25, expr_thresh = .00015, MIN_OBS = 3
) {
    total_gene_list <- c()
    epsilon <- 1e-9
    bulk_vec <- rowSums(counts(puck))
    gene_list <- rownames(cell_type_info[[1]])
    prev_num_genes <- min(length(gene_list), length(names(bulk_vec)))
    if (length(grep("mt-", gene_list)) > 0) {
        gene_list <- gene_list[-grep("mt-", gene_list)]
    }
    gene_list <- intersect(gene_list, names(bulk_vec))
    if (length(gene_list) == 0) {
        stop(
            "get_de_genes: 0 common genes between SpatialRNA and Reference ",
            "objects. Please check for gene list nonempty intersection."
        )
    }
    gene_list <- gene_list[bulk_vec[gene_list] >= MIN_OBS]
    if (length(gene_list) < 0.1 * prev_num_genes) {
        stop(
            "get_de_genes: At least 90% of genes do not match between the ",
            "SpatialRNA and Reference objects. Please examine this. If this ",
            "is intended, please remove the missing genes from the Reference ",
            "object."
        )
    }
    for (cell_type in cell_type_info[[2]]) {
        other_mean <- rowMeans(
            cell_type_info[[1]][
                gene_list, cell_type_info[[2]] != cell_type, drop = FALSE
            ]
        )
        logFC <- (
            log(cell_type_info[[1]][gene_list, cell_type] + epsilon) -
            log(other_mean + epsilon)
        )
        type_gene_list <- which(
            (logFC > fc_thresh) &
            (cell_type_info[[1]][gene_list, cell_type] > expr_thresh)
        )
        message(
            cell_type, " found DE genes: ", length(type_gene_list)
        )
        total_gene_list <- union(total_gene_list, type_gene_list)
    }
    total_gene_list <- gene_list[total_gene_list]
    message("Total DE genes: ", length(total_gene_list))
    return(total_gene_list)
}

prepareBulkData <- function(cell_type_means, puck, gene_list, MIN_OBS = 10) {
    bulk_vec <- rowSums(counts(puck))
    gene_list <- intersect(names(which(bulk_vec >= MIN_OBS)), gene_list)
    nUMI <- sum(nUMI(puck))
    X <- as.matrix(cell_type_means[gene_list, , drop = FALSE] * nUMI)
    b <- bulk_vec[gene_list]
    return(list(X = X, b = b))
}
