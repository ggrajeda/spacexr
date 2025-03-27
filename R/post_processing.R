rctd_metadata <- function(RCTD) {
    metadata <- list(
        spatial_rna = spatialRNA(RCTD),
        config = config(RCTD),
        cell_type_info = cell_type_info(RCTD),
        internal_vars = internal_vars(RCTD)
    )
    return(metadata)
}

#' Converts a list of RCTD results to a \code{SpatialExperiment}
#'
#' The \code{SpatialExperiment} contains an assay with the cell type weights.
#' Additional information (e.g., classification confidence) is stored in the
#' \code{colData}, which contains the entries in the results list specified by
#' the *_cols arguments. Spatial coordinates are stored in the
#' \code{spatialCoords}.
#'
#' @param RCTD  RctdConfig object
#' @param results List of results (with named entries) for each pixel
#' @param weights_col Name of list entry containing the cell type weights
#' @param character_cols Names of list entries containing a character(1)
#' @param logical_cols Names of list entries containing a logical(1)
#' @param numeric_cols Names of list entries containing a numeric(1)
#' @param list_cols Names of list entries containing a list
#'
#' @return \code{SpatialExperiment} containing RCTD results
#'
#' @importFrom SpatialExperiment SpatialExperiment
#' @keywords internal
create_spe_from_columns <- function(
    RCTD,
    results,
    weights_col = "all_weights",
    character_cols = c(), 
    logical_cols = c(), 
    numeric_cols = c(), 
    list_cols = c()
) {
    cell_type_names <- cell_type_info(RCTD)$renorm[[2]]
    weights <- vapply(
        results,
        function(r) r[[weights_col]],
        numeric(length(cell_type_names))
    )
    weights <- Matrix(weights)

    col_data <- data.frame(row.names = rownames(coords(spatialRNA(RCTD))))
    for (cc in character_cols) {
        get_character <- function(r) as.character(r[[cc]])
        col_data[cc] <- vapply(results, get_character, character(1))
    }
    for (lc in list_cols) {
        col_data[[lc]] <- lapply(results, function(r) r[[lc]])
    }
    for (lc in logical_cols) {
        col_data[lc] <- vapply(results, function(r) r[[lc]], logical(1))
    }
    for (nc in numeric_cols) {
        col_data[nc] <- vapply(results, function(r) r[[nc]], numeric(1))
    }

    spatial_coords <- as.matrix(coords(spatialRNA(RCTD))[, c("x", "y")])
    metadata <- rctd_metadata(RCTD)

    # Create SpatialExperiment with a temporary assay name.
    spe <- SpatialExperiment(
        assays = list(weights = weights),
        colData = col_data,
        spatialCoords = spatial_coords,
        metadata = metadata
    )
    spe
}

#' Converts the results of \code{decompose_batch} to a \code{SpatialExperiment}
#'
#' @param RCTD RctdConfig object
#' @param results \code{decompose_batch} results
#'
#' @return \code{SpatialExperiment} containing RCTD results
#'
#' @importFrom SummarizedExperiment assay assays<-
#' @keywords internal
create_spe_full <- function(RCTD, results) {
    create_spe_from_columns(RCTD, results, weights_col = "weights")
}

# Generates doublet-mode weights from the full weights.
get_doublet_weights <- function(weights, results_spe, results_list) {
    first_type <- colData(results_spe)$first_type
    second_type <- colData(results_spe)$second_type

    weights_doublet <- vapply(
        seq_len(ncol(weights)),
        function(pixel) {
            weights_col <- numeric(nrow(weights))
            names(weights_col) <- rownames(weights)

            doublet_weights <- results_list[[pixel]]$doublet_weights
            weights_col[first_type[pixel]] <- doublet_weights[1]
            weights_col[second_type[pixel]] <- doublet_weights[2]
            weights_col
        },
        numeric(nrow(weights))
    )
    Matrix(weights_doublet, sparse = TRUE)
}

# Restricts doublet-mode weights to confident predictions.
get_confident_doublet_weights <- function(weights_doublet, results_spe) {
    spot_class <- colData(results_spe)$spot_class
    first_type <- colData(results_spe)$first_type

    weights_confident <- vapply(
        seq_len(ncol(weights_doublet)),
        function(pixel) {
            weights_col <- numeric(nrow(weights_doublet))
            names(weights_col) <- rownames(weights_doublet)

            if (spot_class[pixel] %in% c("singlet", "doublet_uncertain")) {
                weights_col[first_type[pixel]] <- 1
            } else if (spot_class[pixel] == "doublet_certain") {
                weights_col <- weights_doublet[, pixel]
            }
            weights_col
        },
        numeric(nrow(weights_doublet))
    )
    Matrix(weights_confident, sparse = TRUE)
}

#' Converts the results of \code{process_beads_batch} to a
#' \code{SpatialExperiment}
#'
#' @param RCTD RctdConfig object
#' @param results \code{process_beads_batch} results
#'
#' @return \code{SpatialExperiment} containing RCTD results
#'
#' @importFrom SummarizedExperiment assay assays<- colData colData<-
#' @keywords internal
create_spe_doublet <- function(RCTD, results) {
    spe <- create_spe_from_columns(
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
    colData(spe)$spot_class <- factor(
        colData(spe)$spot_class,
        levels = spot_class_levels
    )

    # Get the initial weights.
    weights_full <- assay(spe)

    # Calculate the other weights.
    weights_unconf <- get_doublet_weights(weights_full, spe, results)
    weights_conf <- get_confident_doublet_weights(weights_unconf, spe)

    assays(spe, withDimnames = FALSE) <- list(
        weights = weights_conf,
        weights_unconfident = weights_unconf,
        weights_full = weights_full
    )
    spe
}

# Generates doublet-mode weights from the full weights.
get_multi_weights <- function(weights, results_spe, results_list) {
    cell_type_lists <- colData(results_spe)$cell_type_list

    weights_multi <- vapply(
        seq_len(ncol(weights)),
        function(pixel) {
            weights_col <- numeric(nrow(weights))
            names(weights_col) <- rownames(weights)

            cell_types <- cell_type_lists[[pixel]]
            sub_weights <- unlist(results_list[[pixel]]$sub_weights)
            weights_col[cell_types] <- sub_weights
            weights_col
        },
        numeric(nrow(weights))
    )
    Matrix(weights_multi, sparse = TRUE)
}

# Restricts multi-mode weights to confident predictions.
get_confident_multi_weights <- function(weights_multi, results_spe) {
    conf_lists <- colData(results_spe)$conf_list

    weights_confident <- vapply(
        seq_len(ncol(weights_multi)),
        function(pixel) {
            weights_col <- numeric(nrow(weights_multi))
            names(weights_col) <- rownames(weights_multi)

            conf_types <- names(which(conf_lists[[pixel]]))
            if (length(conf_types) > 0) {
                weights_col[conf_types] <- weights_multi[conf_types, pixel]
                # Normalize weights to sum to 1.
                weights_col <- weights_col / sum(weights_col)
            }
            weights_col
        },
        numeric(nrow(weights_multi))
    )
    Matrix(weights_confident, sparse = TRUE)
}

#' Converts the results of \code{process_beads_multi} to a
#' \code{SpatialExperiment}
#'
#' @param RCTD RctdConfig object
#' @param results \code{process_beads_multi} results
#'
#' @return \code{SpatialExperiment} containing RCTD results
#'
#' @importFrom SummarizedExperiment assay assays<- colData
#' @keywords internal
create_spe_multi <- function(RCTD, results) {
    spe <- create_spe_from_columns(
        RCTD,
        results,
        logical_cols = c("conv_all", "conv_sub"),
        numeric_cols = c("min_score"),
        list_cols = c("cell_type_list", "conf_list")
    )

    # Get the initial weights.
    weights_full <- assay(spe)

    # Calculate the other weights.
    weights_unconf <- get_multi_weights(weights_full, spe, results)
    weights_conf <- get_confident_multi_weights(weights_unconf, spe)

    assays(spe, withDimnames = FALSE) <- list(
        weights = weights_conf,
        weights_unconfident = weights_unconf,
        weights_full = weights_full
    )
    spe
}
