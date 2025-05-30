filter_genes <- function(puck, threshold = 5e-5, batch_size = 1000) {
    message(c("filter_genes: filtering genes based on threshold = ", threshold))
    gene_means <- numeric(length(rownames(counts(puck))))
    names(gene_means) <- rownames(counts(puck))
    n_batches <- ceiling(length(gene_means) / batch_size)
    for (j in seq_len(n_batches)) {
        if (j < n_batches) {
            index_range <- (seq_len(batch_size)) + (j - 1) * batch_size
        } else {
            index_range <- (1 + (n_batches - 1) * batch_size):length(gene_means)
        }
        norm_counts <- sweep(
            as.matrix(counts(puck)[index_range, ]),
            2,
            nUMI(puck),
            "/"
        )
        gene_means[index_range] <- rowMeans(norm_counts)
    }
    gene_list_tot <- names(which(gene_means > threshold))
    if (length(grep("mt-", gene_list_tot)) > 0) {
        gene_list_tot <- gene_list_tot[-grep("mt-", gene_list_tot)]
    }
    return(gene_list_tot)
}

#' If cell types have been assigned to the RCTD object, running this function
#' will toggle the cell_types_assigned variable, which enables CSIDE to be run.
#'
#' @param myRCTD a \code{\linkS4class{CsideConfig}} object adapted from the
#'   output of the \code{\link{runRctd}} function.
#' @return the `myRCTD` object with cell_types_assigned set to TRUE
#' @export
set_cell_types_assigned <- function(myRCTD) {
    myRCTD@internal_vars$cell_types_assigned <- TRUE
    return(myRCTD)
}

filter_barcodes_cell_types <- function(
    barcodes, cell_types, my_beta, thresh = 0.9999) {
    barcodes <- barcodes[(rowSums(my_beta[barcodes, cell_types]) >= thresh)]
    my_beta <- my_beta[barcodes, cell_types]
    return(list(barcodes = barcodes, my_beta = my_beta))
}

get_gene_list_type <- function(
    my_beta, barcodes, cell_type, nUMI, gene_list_type, cti_renorm,
    cell_types_present, gene_fits, test_mode = "individual") {
    C <- 15
    N_cells <- colSums(my_beta[barcodes, ])[cell_type]
    UMI_list <- nUMI[names(which(my_beta[barcodes, cell_type] >= .99))]
    if (length(UMI_list) < 10) {
        UMI_list <- nUMI[names(which(my_beta[barcodes, cell_type] >= .80))]
    }
    if (length(UMI_list) < 10) {
        UMI_list <- nUMI[names(which(my_beta[barcodes, cell_type] >= .5))]
    }
    if (length(UMI_list) < 10) {
        UMI_list <- nUMI[names(which(my_beta[barcodes, cell_type] >= .01))]
    }
    UMI_m <- median(UMI_list)
    expr_thresh <- C / (N_cells * UMI_m)
    gene_list_type <- setdiff(
        gene_list_type,
        gene_list_type[
            which(cti_renorm[gene_list_type, cell_type] < expr_thresh)
        ]
    )
    cell_type_means <- cti_renorm[gene_list_type, cell_types_present]
    cell_prop <- sweep(cell_type_means, 1, apply(cell_type_means, 1, max), "/")
    gene_list_type <- gene_list_type[
        which(cell_prop[gene_list_type, cell_type] > 0.5)
    ]
    if (test_mode == "categorical") {
        n_cell_types <- dim(my_beta)[2]
        n_regions <- dim(gene_fits$con_all)[2] / n_cell_types
        cell_type_ind <- which(colnames(my_beta) == cell_type)
        my_filter <- unlist(lapply(gene_list_type, function(gene) {
            (sum(get_con_regions(
                gene_fits, gene, n_regions, cell_type_ind, n_cell_types
            )) >= 2)
        }))
        gene_list_type <- gene_list_type[my_filter]
    } else {
        gene_list_type <- intersect(
            gene_list_type,
            names(which(gene_fits$con_mat[, cell_type]))
        )
    } # only take converged genes
    return(gene_list_type)
}

get_con_regions <- function(
    gene_fits, gene, n_regions, cell_type_ind, n_cell_types) {
    matrix(
        gene_fits$con_all[gene, ],
        nrow = n_regions,
        ncol = n_cell_types
    )[, cell_type_ind]
}

#' Aggregates the pixel occurrences for each cell type in the
#' \code{\linkS4class{CsideConfig}} object
#'
#' The difference with \code{\link{count_cell_types}} is that this function does
#' not filter out pixels based on total cell type weight, as occurs in the CSIDE
#' algorithm.
#'
#' @param myRCTD a \code{\linkS4class{CsideConfig}} object adapted from the
#'   output of the \code{\link{runRctd}} function.
#' @param barcodes the barcodes, or pixel names, of the
#'   \code{\linkS4class{SpatialRNA}} object to be used when counting cell types.
#' @param doublet_mode (default TRUE) if TRUE, uses RCTD doublet mode weights.
#'   Otherwise, uses RCTD full mode weights
#' @return a named vector of number of pixel occurrences for each cell type
#' @export
aggregate_cell_types <- function(myRCTD, barcodes, doublet_mode = TRUE) {
    rowSums(assay(myRCTD@results[, barcodes], "weights"))
}

get_param_names <- function(X1, X2, cell_types) {
    cnames <- c()
    if (dim(X1)[2] > 0) {
        cnames <- unlist(
            lapply(seq_len(dim(X1)[2]), function(x) paste0("1_", x))
        )
    }
    for (k in seq_along(cell_types)) {
        cnames <- c(cnames, unlist(
            lapply(
                seq_len(dim(X2)[2]),
                function(x) paste0("2_", x, "_", cell_types[k])
            )
        ))
    }
    return(cnames)
}

get_cell_type_ind <- function(X1, X2, n_cell_types) {
    cnames <- c()
    if (dim(X1)[2] > 0) {
        cnames <- rep(0, dim(X1)[2])
    }
    cnames <- c(cnames, unlist(
        lapply(seq_len(n_cell_types), function(x) rep(x, dim(X2)[2]))
    ))
    return(cnames)
}

choose_cell_types <- function(
    myRCTD, barcodes, doublet_mode, cell_type_threshold, cell_types) {
    cell_type_count <- aggregate_cell_types(
        myRCTD, barcodes, doublet_mode = doublet_mode
    )
    cell_types_default <- names(which(cell_type_count >= cell_type_threshold))
    passed_cell_types <- !is.null(cell_types)
    if (passed_cell_types) {
        diff_types <- setdiff(cell_types, cell_types_default)
        if (length(diff_types) > 0) {
            stop(
                "choose_cell_types: cell types: ",
                paste(diff_types, collapse = ", "),
                " detected using aggregate_cell_types to have less than the ",
                "minimum cell_type_threshold of ", cell_type_threshold,
                ". To fix this issue, please remove these cell types or ",
                "reduce the cell_type_threshold"
            )
        }
        diff_types <- setdiff(cell_types, myRCTD@cell_type_info$info[[2]])
        if (length(diff_types) > 0) {
            stop(
                "choose_cell_types: cell types: ",
                paste(diff_types, collapse = ", "),
                " are not valid cell types in this RCTD object ",
                "(myRCTD@cell_type_info$info[[2]]). Please check that ",
                "cell_types only has valid cell types."
            )
        }
    } else {
        cell_types <- cell_types_default
    }
    if (length(cell_types) == 0) {
        if (passed_cell_types) {
            stop(
                "choose_cell_types: length(cell_types) is 0. Please pass in ",
                "at least one cell type in the list cell_types"
            )
        } else {
            stop(
                "choose_cell_types: length(cell_types) is 0. According to the ",
                "aggregate_cell_types fn, no cell types occured greater than ",
                "cell_type_threshold of ", cell_type_threshold, ". Please ",
                "check that all data is present and consider reducing ",
                "cell_type_threshold."
            )
        }
    }
    if (length(cell_types) == 1) {
        stop(
            "choose_cell_types: length(cell_types) is 1. This is currently ",
            "not supported. Please consider adding another cell type or ",
            "contact the developers to have us add in this capability."
        )
    }
    cell_types
}

fdr_sig_genes <- function(gene_list_type, p_val, fdr) {
    N_genes_type <- length(gene_list_type)
    thresh <- (seq_len(N_genes_type)) / N_genes_type * fdr
    if (any(p_val[order(p_val)] < thresh)) {
        N_sig <- max(which(p_val[order(p_val)] < thresh))
        gene_list_sig <- gene_list_type[order(p_val)[seq_len(N_sig)]]
    } else {
        gene_list_sig <- c()
    }
    return(gene_list_sig)
}

get_spline_matrix <- function(puck, df = 15) {
    center_coords <- coords(puck)
    center_coords <- sweep(center_coords, 2, apply(center_coords, 2, mean), "-")
    center_coords <- center_coords / sd(as.matrix(center_coords))
    sm <- mgcv::smoothCon(
        mgcv::s(x, y, k = df, fx = TRUE, bs = "tp"),
        data = center_coords
    )[[1]]
    mm <- as.matrix(data.frame(sm$X))
    # Swap intercept, x, and y
    X2 <- cbind(mm[, (df - 2):df], mm[, seq_len(df - 3)])
    X2[, 2:df] <- sweep(X2[, 2:df], 2, apply(X2[, 2:df], 2, mean), "-")
    # Standardize
    X2[, 2:df] <- sweep(X2[, 2:df], 2, apply(X2[, 2:df], 2, sd), "/")
    rownames(X2) <- names(nUMI(puck))
    return(X2)
}

check_converged_vec <- function(
    X1, X2, my_beta, itera, n.iter, error_vec, precision, PRECISION.THRESHOLD) {
    cell_type_ind <- get_cell_type_ind(X1, X2, dim(my_beta)[2])
    converged_vec <- (seq_len(dim(my_beta)[2])) == 0
    # if(itera < n.iter) {
    converged_vec <- !converged_vec
    converged_vec[
        unique(cell_type_ind[precision > PRECISION.THRESHOLD])
    ] <- FALSE
    # }
    converged_vec <- converged_vec & (!error_vec)
    names(converged_vec) <- colnames(my_beta)
    return(converged_vec)
}

#' Constructs an explanatory variable representing density of a cell type
#'
#' This explanatory variable can be used with CSIDE to detect cell-to-cell
#' interactions. Density is computing using an exponentially-decaying filter.
#' Currently only works for doublet mode RCTD.
#'
#' @param myRCTD a \code{\linkS4class{CsideConfig}} object adapted from the
#'   output of the \code{\link{runRctd}} function.
#' @param cell_type the cell type (character) for which to compute density.
#' @param barcodes the barcodes, or pixel names, of the
#'   \code{\linkS4class{SpatialRNA}} for which to evaluate the explanatory
#'   variable. These would be the pixels used in the C-SIDE model.
#' @param radius (default 50) the radius of the exponential filter.
#'   Approximately, the distance considered to be a relevant interaction.
#' @return explanatory.variable a named numeric vector representing the
#'   explanatory variable used for explaining differential expression in CSIDE.
#'   Names of the variable are the \code{\linkS4class{SpatialRNA}} pixel names,
#'   and values  are standardized between 0 and 1. This variable represents
#'   density of the selected cell type.
#' @export
exvar.celltocell.interactions <- function(
    myRCTD, barcodes, cell_type, radius = 50) {
    doublet_df <- myRCTD@results$results_df
    weights_doublet <- myRCTD@results$weights_doublet
    puck <- myRCTD@spatialRNA
    # Get a list of barcodes for cells of cell_type
    # Filter so we have cells in the cropped puck, that are "singlets" or
    # "certain doublets" with first or second type being the target type
    target_df <- dplyr::filter(
        doublet_df, (rownames(doublet_df) %in% barcodes) &
        ((first_type == cell_type & (spot_class != "reject")) |
            ((second_type == cell_type) & (spot_class == "doublet_certain"))
        ))
    target_barcodes <- rownames(target_df)

    # Names are the barcodes, value is a score computed using euclidean distance
    # from the cells of cell_type
    # The cropped puck subset, use rownames(doublet_df) for all barcodes
    all_barcodes <- barcodes
    explanatory.variable <- c(rep(0, length(all_barcodes)))
    names(explanatory.variable) <- all_barcodes

    # Calculate proximity score by summing the scores across all cells of target
    # type for each cell in puck
    # Individual scores between a cell and any target cell is calculated as
    # n_i*exp(-d_i/c)
    # n_i is the weighted nUMI of the target cell; weighted by the proportion
    # that the pixel is the target cell type. singlets are weighted as 1.0
    # d_i is the distance between the current cell and target cell

    # Create a distance table between all pairs of cells. rdist is so fast
    # there's no need to save this.
    # fields::rdist treats rows as coordinates and computes all distances
    # between placing them in a distance matrix.
    dist_matrix <- fields::rdist(as.matrix(coords(puck)))
    rownames(dist_matrix) <- rownames(coords(puck))
    colnames(dist_matrix) <- rownames(coords(puck))
    # Precompute the exponent component of the proximity score for all pairs of
    # cells
    exponent_mat <- exp(-dist_matrix / radius)

    # Precompute the weighted nUMI values for all target cells
    weighted_nUMIs <- c(rep(0, length(target_barcodes)))
    names(weighted_nUMIs) <- target_barcodes
    for (i in seq_along(weighted_nUMIs)) {
        barcode <- target_barcodes[i]
        nUMI <- nUMI(puck)[barcode]

        spot_class <- doublet_df[barcode, "spot_class"]
        first_type <- doublet_df[barcode, "first_type"]
        second_type <- doublet_df[barcode, "second_type"]

        weight <- 0.0
        if (spot_class == "singlet") {
            weight <- if (first_type == cell_type) 1.0 else 0.0
        } else if (first_type == cell_type) {
            weight <- weights_doublet[barcode, 1]
        } else {
            weight <- weights_doublet[barcode, 2]
        }
        weighted_nUMI <- nUMI * weight
        weighted_nUMIs[i] <- weighted_nUMI
    }

    # Use the precomputed components above to compute explanatory.variable
    for (i in seq_along(all_barcodes)) {
        barcode <- all_barcodes[i]

        exp_dists <- exponent_mat[barcode, target_barcodes]
        proximity_score <- weighted_nUMIs %*% exp_dists
        explanatory.variable[i] <- proximity_score
    }
    explanatory.variable <- normalize_ev(explanatory.variable)
}


#' Constructs an explanatory variable representing density of a set of points
#'
#' This explanatory variable can be used with CSIDE to detect DE in the
#' proximity of these points. Density is computing using an
#' exponentially-decaying filter.
#'
#' @param myRCTD a \code{\linkS4class{CsideConfig}} object adapted from the
#'   output of the \code{\link{runRctd}} function.
#' @param points a N by 2 matrix containing the locations of the points to be
#'   used for computing density. The first column should be the x coordinates
#'   while the second column should be the y coordinate.
#' @param barcodes the barcodes, or pixel names, of the
#'   \code{\linkS4class{SpatialRNA}} for which to evaluate the explanatory
#'   variable. These would be the pixels used in the C-SIDE model.
#' @param radius (default 50) the radius of the exponential filter.
#'   Approximately, the distance considered to be a relevant interaction.
#' @return explanatory.variable a named numeric vector representing the
#'   explanatory variable used for explaining differential expression in CSIDE.
#'   Names of the variable are the \code{\linkS4class{SpatialRNA}} pixel names,
#'   and values  are standardized between 0 and 1. This variable represents
#'   density of the given point set.
#' @export
exvar.point.density <- function(myRCTD, barcodes, points, radius = 50) {
    puck <- myRCTD@spatialRNA
    explanatory.variable <- c(rep(0, length(barcodes)))
    names(explanatory.variable) <- barcodes
    # fields::rdist treats rows as coordinates and computes all distances
    # between placing them in a distance matrix.
    dist_matrix <- fields::rdist(as.matrix(coords(puck)), as.matrix(points))
    rownames(dist_matrix) <- rownames(coords(puck))
    # Precompute the exponent component of the proximity score for all pairs of
    # cells
    exponent_mat <- exp(-dist_matrix / radius)
    explanatory.variable <- rowSums(exponent_mat)
    explanatory.variable <- normalize_ev(explanatory.variable)
}

# Normalize explanatory.variable so the values span from 0 to 1.
normalize_ev <- function(explanatory.variable) {
    # Threshold values over the specific 85% percentile to be 1.
    explanatory.variable <- explanatory.variable - min(explanatory.variable)
    percentile <- quantile(explanatory.variable, .85)
    explanatory.variable <- explanatory.variable / percentile
    explanatory.variable[explanatory.variable > 1] <- 1
    return(explanatory.variable)
}

#' On an RCTD object after running CSIDE, returns an array of standard errors of
#' CSIDE coefficients
#'
#' The dimensions of the standard error array is N_genes x N_coefficients x
#' N_cell_types The N_coefficients are the number of explanatory variables in
#' the CSIDE model
#'
#' @param myRCTD a \code{\linkS4class{CsideConfig}} object adapted from the
#'   output of the \code{\link{runRctd}} function.
#' @return a three-dimensional array representing CSIDE standard errors for each
#'   gene, each coefficient, and each cell type.
#' @export
get_standard_errors <- function(myRCTD) {
    s_new <- myRCTD@de_results$gene_fits$s_mat
    dim3 <- length(myRCTD@internal_vars_de$cell_types)
    dim2 <- dim(myRCTD@de_results$gene_fits$s_mat)[2] / dim3
    dim(s_new) <- c(dim(myRCTD@de_results$gene_fits$s_mat)[1], 2, dim3)
    dimnames(s_new)[[1]] <- rownames(myRCTD@de_results$gene_fits$s_mat)
    dimnames(s_new)[[3]] <- myRCTD@internal_vars_de$cell_types
    return(s_new)
}

check_vector <- function(variable, var_name, f_name, require_int = FALSE) {
    if (!is.atomic(variable)) {
        stop(
            f_name, ": ", var_name, " is not an atomic vector. Please format ",
            var_name, " as an atomic vector."
        )
    }
    if (!is.numeric(variable)) {
        stop(f_name, ": ", var_name, " is not numeric")
    }
    if (is.null(names(variable))) {
        stop(f_name, ": names(", var_name, ") is null. Please enter names")
    }
    if (length(variable) == 1) {
        stop(
            f_name, ": the length of ", var_name, " is 1, indicating only one ",
            "element present. Please format ", var_name, " so that the length ",
            "is greater than 1."
        )
    }
    if (require_int && max(abs(variable %% 1)) > 1e-6) {
        stop(f_name, ": variable does not contain integers")
    }
}
