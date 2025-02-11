# functions for processing data after RCTD is fit to the data

#' Collects RCTD results into a dataframe
#'
#' @param RCTD RCTD object
#' @param results List of RCTD results for each pixel, output by
#'   \code{\link{process_beads_batch}}
#'
#' @return RCTD results organized into a dataframe
#' @keywords internal
gather_results <- function(RCTD, results) {
    cell_type_names <- RCTD@cell_type_info$renorm[[2]]
    barcodes <- colnames(RCTD@spatialRNA@counts)
    N <- length(results)
    weights <- Matrix(0, nrow = N, ncol = length(cell_type_names))
    weights_doublet <- Matrix(0, nrow = N, ncol = 2)
    rownames(weights) <- barcodes
    rownames(weights_doublet) <- barcodes
    colnames(weights) <- cell_type_names
    colnames(weights_doublet) <- c("first_type", "second_type")
    empty_cell_types <- factor(character(N), levels = cell_type_names)
    spot_levels <- c("reject", "singlet", "doublet_certain", "doublet_uncertain")
    results_df <- data.frame(
        spot_class = factor(character(N), levels = spot_levels),
        first_type = empty_cell_types, second_type = empty_cell_types,
        first_class = logical(N), second_class = logical(N),
        min_score = numeric(N), singlet_score = numeric(N),
        conv_all = logical(N), conv_doublet = logical(N)
    )
    score_mat <- list()
    singlet_scores <- list()
    for (i in seq_len(N)) {
        if (i %% 1000 == 0) {
            message("gather_results: finished ", i)
        }
        weights_doublet[i, ] <- results[[i]]$doublet_weights
        weights[i, ] <- results[[i]]$all_weights
        results_df[i, "spot_class"] <- results[[i]]$spot_class
        results_df[i, "first_type"] <- results[[i]]$first_type
        results_df[i, "second_type"] <- results[[i]]$second_type
        results_df[i, "first_class"] <- results[[i]]$first_class
        results_df[i, "second_class"] <- results[[i]]$second_class
        results_df[i, "min_score"] <- results[[i]]$min_score
        results_df[i, "singlet_score"] <- results[[i]]$singlet_score
        results_df[i, "conv_all"] <- results[[i]]$conv_all
        results_df[i, "conv_doublet"] <- results[[i]]$conv_doublet
        score_mat[[i]] <- results[[i]]$score_mat
        singlet_scores[[i]] <- results[[i]]$singlet_scores
    }
    rownames(results_df) <- barcodes
    RCTD@results <- list(
        results_df = results_df, weights = weights, weights_doublet = weights_doublet,
        score_mat = score_mat, singlet_scores = singlet_scores
    )
    return(RCTD)
}

#' Normalizes the `weights` matrix from the RCTD results object
#'
#' @param weights a matrix of weights to be normalized
#' @return norm.weights a normalized matrix of weights where rows sum to one.
#' @export
normalize_weights <- function(weights) {
    return(sweep(weights, 1, rowSums(weights), "/"))
}

rctd_metadata <- function(RCTD) {
    metadata <- list(
        spatial_rna = RCTD@spatialRNA,
        original_spatial_rna = RCTD@originalSpatialRNA,
        reference = RCTD@reference,
        config = RCTD@config,
        cell_type_info = RCTD@cell_type_info,
        internal_vars = RCTD@internal_vars
    )
    return(metadata)
}

#' Converts a list of results to a SummarizedExperiment
#' 
#' The SummarizedExperiment contains an assay with the cell type weights.
#' Additional information (e.g., x and y coords) are stored in the row data,
#' which will contain the entries in the results list specified by the *_cols
#' arguments.
#' 
#' @param RCTD  RCTD object
#' @param results List of results (with named entries) for each pixel
#' @param weights_col Name of list entry containing the cell type weights
#' @param character_cols Names of list entries containing a character(1)
#' @param logical_cols Names of list entries containing a logical(1)
#' @param numeric_cols Names of list entries containing a numeric(1)
#' @param list_cols Names of list entries containing a list
#'
#' @importFrom SummarizedExperiment SummarizedExperiment
#' @keywords internal
create_se_from_columns <- function(
    RCTD,
    results,
    weights_col = "all_weights",
    character_cols = c(), 
    logical_cols = c(), 
    numeric_cols = c(), 
    list_cols = c()
) {
    cell_type_names <- RCTD@cell_type_info$renorm[[2]]
    weights <- vapply(
        results,
        function(r) r[[weights_col]],
        numeric(length(cell_type_names))
    )
    weights <- Matrix(t(weights))

    coords <- RCTD@spatialRNA@coords[, c("x", "y")]
    row_data <- data.frame(coords)
    for (cc in character_cols) {
        get_character <- function(r) as.character(r[[cc]])
        row_data[cc] <- vapply(results, get_character, character(1))
    }
    for (lc in list_cols) {
        row_data[[lc]] <- lapply(results, function(r) r[[lc]])
    }
    for (lc in logical_cols) {
        row_data[lc] <- vapply(results, function(r) r[[lc]], logical(1))
    }
    for (nc in numeric_cols) {
        row_data[nc] <- vapply(results, function(r) r[[nc]], numeric(1))
    }

    metadata <- rctd_metadata(RCTD)

    se <- SummarizedExperiment(
        assays = list(weights = weights),
        rowData = row_data,
        metadata = metadata
    )
    return(se)
}

#' Converts the results of \code{decompose_batch} to a SummarizedExperiment
#' 
#' @param RCTD RCTD object
#' @param results \code{decompose_batch} results
#'
#' @importFrom SummarizedExperiment assay assay<-
#' @keywords internal
create_se_full <- function(RCTD, results) {
    se <- create_se_from_columns(RCTD, results, weights_col = "weights")
    # Store weights redundantly for consistency with other modes.
    assay(se, "weights_full") <- assay(se, "weights")
    return(se)
}

#' Converts the results of \code{process_beads_batch} to a SummarizedExperiment
#' 
#' @param RCTD RCTD object
#' @param results \code{process_beads_batch} results
#'
#' @importFrom SummarizedExperiment assay assay<- rowData rowData<-
#' @keywords internal
create_se_doublet <- function(RCTD, results) {
    se <- create_se_from_columns(
        RCTD,
        results,
        character_cols = c("spot_class", "first_type", "second_type"),
        logical_cols = c(
            "first_class", "second_class", "conv_all", "conv_doublet"
        ),
        numeric_cols = c("min_score", "singlet_score")
    )

    spot_class_levels <- c(
        "reject", "singlet", "doublet_certain", "doublet_uncertain"
    )
    rowData(se)$spot_class <- factor(
        rowData(se)$spot_class,
        levels = spot_class_levels
    )

    weights <- assay(se, "weights")
    # Generate doublet-mode weights from doublet_weights entry.
    weights_doublet <- vapply(
        seq_len(nrow(weights)),
        function(pixel) {
            weights_row <- numeric(ncol(weights))
            names(weights_row) <- colnames(weights)

            row_data <- rowData(se)[pixel, ]
            doublet_weights <- results[[pixel]]$doublet_weights
            weights_row[row_data$first_type] <- doublet_weights[1]
            weights_row[row_data$second_type] <- doublet_weights[2]
            weights_row
        },
        numeric(ncol(weights))
    )
    weights_doublet <- Matrix(t(weights_doublet), sparse = TRUE)

    # Move the full weights and store the doublet-mode weights
    assay(se, "weights_full") <- weights
    assay(se, "weights", withDimnames = FALSE) <- weights_doublet
    return(se)
}

#' Converts the results of \code{process_beads_multi} to a SummarizedExperiment
#' 
#' @param RCTD RCTD object
#' @param results \code{process_beads_multi} results
#'
#' @importFrom SummarizedExperiment assay assay<- rowData
#' @keywords internal
create_se_multi <- function(RCTD, results) {
    se <- create_se_from_columns(
        RCTD,
        results,
        logical_cols = c("conv_all", "conv_sub"),
        numeric_cols = c("min_score"),
        list_cols = c("cell_type_list", "conf_list")
    )

    weights <- assay(se, "weights")
    # Generate multi-mode weights from sub_weights entry.
    weights_multi <- vapply(
        seq_len(nrow(weights)),
        function(pixel) {
            weights_row <- numeric(ncol(weights))
            names(weights_row) <- colnames(weights)

            cell_types <- rowData(se)$cell_type_list[pixel]
            sub_weights <- unlist(results[[pixel]]$sub_weights)
            weights_row[unlist(cell_types)] <- sub_weights
            weights_row
        },
        numeric(ncol(weights))
    )
    weights_multi <- Matrix(t(weights_multi), sparse = TRUE)

    # Move the full weights and store the multi-mode weights
    assay(se, "weights_full") <- weights
    assay(se, "weights", withDimnames = FALSE) <- weights_multi
    return(se)
}
