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

#' Converts a list of RCTD results to a SummarizedExperiment
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
#' @return SummarizedExperiment containing RCTD results
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
        assays = list(weights_full = weights),
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
#' @return SummarizedExperiment containing RCTD results
#'
#' @importFrom SummarizedExperiment assay assay<-
#' @keywords internal
create_se_full <- function(RCTD, results) {
    create_se_from_columns(RCTD, results, weights_col = "weights")
}

# Generates doublet-mode weights from the full weights.
get_doublet_weights <- function(weights, results_se, results_list) {
    first_type <- rowData(results_se)$first_type
    second_type <- rowData(results_se)$second_type

    weights_doublet <- vapply(
        seq_len(nrow(weights)),
        function(pixel) {
            weights_row <- numeric(ncol(weights))
            names(weights_row) <- colnames(weights)

            doublet_weights <- results_list[[pixel]]$doublet_weights
            weights_row[first_type[pixel]] <- doublet_weights[1]
            weights_row[second_type[pixel]] <- doublet_weights[2]
            weights_row
        },
        numeric(ncol(weights))
    )
    Matrix(t(weights_doublet), sparse = TRUE)
}

# Restricts doublet-mode weights to confident predictions.
get_confident_doublet_weights <- function(weights_doublet, results_se) {
    spot_class <- rowData(results_se)$spot_class
    first_type <- rowData(results_se)$first_type

    weights_confident <- vapply(
        seq_len(nrow(weights_doublet)),
        function(pixel) {
            weights_row <- numeric(ncol(weights_doublet))
            names(weights_row) <- colnames(weights_doublet)

            if (spot_class[pixel] %in% c("singlet", "doublet_uncertain")) {
                weights_row[first_type[pixel]] <- 1
            } else if (spot_class[pixel] == "doublet_certain") {
                weights_row <- weights_doublet[pixel, ]
            }
            weights_row
        },
        numeric(ncol(weights_doublet))
    )
    Matrix(t(weights_confident), sparse = TRUE)
}

#' Converts the results of \code{process_beads_batch} to a SummarizedExperiment
#'
#' @param RCTD RCTD object
#' @param results \code{process_beads_batch} results
#'
#' @return SummarizedExperiment containing RCTD results
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

    # Add unconfident doublet-mode weights.
    weights <- assay(se)
    weights_unconf <- get_doublet_weights(weights, se, results)
    assay(se, "weights_unconfident", withDimnames = FALSE) <- weights_unconf
    
    # Add confident weights.
    weights_conf <- get_confident_doublet_weights(weights_unconf, se)
    assay(se, "weights", withDimnames = FALSE) <- weights_conf
    
    return(se)
}

# Generates doublet-mode weights from the full weights.
get_multi_weights <- function(weights, results_se, results_list) {
    cell_type_lists <- rowData(results_se)$cell_type_list

    weights_multi <- vapply(
        seq_len(nrow(weights)),
        function(pixel) {
            weights_row <- numeric(ncol(weights))
            names(weights_row) <- colnames(weights)

            cell_types <- cell_type_lists[[pixel]]
            sub_weights <- unlist(results_list[[pixel]]$sub_weights)
            weights_row[cell_types] <- sub_weights
            weights_row
        },
        numeric(ncol(weights))
    )
    Matrix(t(weights_multi), sparse = TRUE)
}

# Restricts multi-mode weights to confident predictions.
get_confident_multi_weights <- function(weights_multi, results_se) {
    conf_lists <- rowData(results_se)$conf_list

    weights_confident <- vapply(
        seq_len(nrow(weights_multi)),
        function(pixel) {
            weights_row <- numeric(ncol(weights_multi))
            names(weights_row) <- colnames(weights_multi)

            conf_types <- names(which(conf_lists[[pixel]]))
            if (length(conf_types) > 0) {
                weights_row[conf_types] <- weights_multi[pixel, conf_types]
                # Normalize weights to sum to 1.
                weights_row <- weights_row / sum(weights_row)
            }
            weights_row
        },
        numeric(ncol(weights_multi))
    )
    Matrix(t(weights_confident), sparse = TRUE)
}

#' Converts the results of \code{process_beads_multi} to a SummarizedExperiment
#'
#' @param RCTD RCTD object
#' @param results \code{process_beads_multi} results
#'
#' @return SummarizedExperiment containing RCTD results
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

    # Add unconfident multi-mode weights.
    weights <- assay(se)
    weights_unconf <- get_multi_weights(weights, se, results)
    assay(se, "weights_unconfident", withDimnames = FALSE) <- weights_unconf
    
    # Add confident weights.
    weights_conf <- get_confident_multi_weights(weights_unconf, se)
    assay(se, "weights", withDimnames = FALSE) <- weights_conf
    
    return(se)
}
