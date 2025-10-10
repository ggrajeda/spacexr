getInitialGeneList <- function(spatial_counts, cell_type_info, MIN_OBS) {
    gene_list <- rownames(cell_type_info[[1]])
    bulk_vec <- rowSums(spatial_counts)
    num_genes <- min(length(gene_list), length(names(bulk_vec)))
    if (length(grep("mt-", gene_list)) > 0) {
        message("getInitialGeneList: Filtering out mitochondrial genes.")
        gene_list <- gene_list[-grep("mt-", gene_list)]
    }
    gene_list <- intersect(gene_list, names(bulk_vec))
    if (length(gene_list) == 0) {
        stop(
            "getInitialGeneList: 0 common genes between SpatialRNA and ",
            "Reference objects. Please check for gene list nonempty ",
            "intersection."
        )
    }
    gene_list <- gene_list[bulk_vec[gene_list] >= MIN_OBS]
    if (length(gene_list) < 0.1 * num_genes) {
        stop(
            "getInitialGeneList: At least 90% of genes do not match between ",
            "the SpatialRNA and Reference objects. Please examine this. If ",
            "this is intended, please remove the missing genes from the ",
            "Reference object."
        )
    }
    gene_list
}

# Log plus epsilon
logep <- function(x) { log(x + 1e-9 ) }

#' Returns a list of differentially expressed genes
#'
#' For each cell type, chooses genes that have a minimum average normalized
#' expression in that cell type, and whose expression is larger in that cell
#' type than the average of all cell types. Filters out mitochondrial genes.
#'
#' @param spatial_counts spatial transcriptomics count matrix
#' @param cell_type_info cell type information and profiles of each cell,
#'   calculated from the scRNA-seq reference (see
#'   \code{\link{computeCellTypeInfo}})
#' @param MIN_OBS the minimum number of occurances of each gene in the
#'   SpatialRNA object.
#' @param fc_thresh minimum \code{log_e} fold change required for a gene.
#' @param expr_thresh minimum expression threshold, as normalized expression
#'   (proportion out of 1, or counts per 1).
#' @param de_type type of differential expression (i.e., "regression" or "bulk")
#' @return a list of differentially expressed gene names
#' @keywords internal
getDeGenes <- function(
    spatial_counts, cell_type_info, fc_thresh = 1.25,
    expr_thresh = .00015, MIN_OBS = 3, de_type = "regression"
) {
    message("Getting ", de_type, " differentially expressed genes: ")
    total_gene_list <- c()
    gene_list <- getInitialGeneList(spatial_counts, cell_type_info, MIN_OBS)

    for (cell_type in cell_type_info[[2]]) {
        cell_type_expression <- cell_type_info[[1]][gene_list, cell_type]
        other_types_expression <- rowMeans(
            cell_type_info[[1]][
                gene_list, cell_type_info[[2]] != cell_type, drop = FALSE
            ]
        )
        log_fc <- logep(cell_type_expression) - logep(other_types_expression)
        type_gene_list <- which(
            (log_fc > fc_thresh) & (cell_type_expression > expr_thresh)
        )
        message(
            cell_type, " found DE genes: ", length(type_gene_list)
        )
        total_gene_list <- union(total_gene_list, type_gene_list)
    }
    total_gene_list <- gene_list[total_gene_list]
    if (length(total_gene_list) < 10) {
        stop("Fewer than 10 ", de_type, " differentially expressed genes found")
    }
    message("Total DE genes: ", length(total_gene_list))
    return(total_gene_list)
}
