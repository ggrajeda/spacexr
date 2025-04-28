# decompose with just two cell types
# if score_mode, then returns the objective function score
# if denoise, then it fits a "noise" dimension as the mean of all the data
decompose_sparse <- function(
    cell_type_profiles, nUMI, bead, type1 = NULL, type2 = NULL,
    score_mode = FALSE, custom_list = NULL, solution = NULL,
    verbose = FALSE, constrain = TRUE, MIN.CHANGE = 0.001, fix = 0,
    return_results = FALSE, normalize = TRUE
) {
    if (is.null(custom_list)) {
        cell_types <- c(type1, type2)
    } else {
        cell_types <- custom_list
    }
    reg_data <- data.matrix(cell_type_profiles[, cell_types, drop = FALSE])
    if (score_mode) {
        n.iter <- 25
    } else {
        n.iter <- 50
    }
    results <- solveIRWLS.weights(
        reg_data, bead, nUMI, OLS = FALSE, solution = solution[cell_types],
        constrain = constrain, verbose = verbose, fix = fix, n.iter = n.iter,
        MIN_CHANGE = MIN.CHANGE
    )
    if (!score_mode) {
        if (normalize) {
            results$weights <- results$weights / sum(results$weights)
        }
        return(results)
    } else {
        prediction <- reg_data %*% results$weights
        total_score <- calc_log_l_vec(prediction, bead)
        if (return_results) {
            return(list(results = results, total_score = total_score))
        }
        return(total_score)
    }
}

# decompose with all cell types
decompose_full <- function(
    cell_type_profiles, nUMI, bead,
    OLS = FALSE, solution = NULL, constrain = TRUE, verbose = FALSE,
    n.iter = 50, MIN_CHANGE = 0.001, bulk_mode = FALSE
) {
    results <- solveIRWLS.weights(
        cell_type_profiles, bead, nUMI,
        OLS = OLS, solution = solution, constrain = constrain,
        verbose = verbose, n.iter = n.iter,
        MIN_CHANGE = MIN_CHANGE, bulk_mode = bulk_mode
    )
    return(results)
}

check_pairs_type <- function(
    cell_type_profiles, bead, UMI_tot, score_mat, min_score, my_type, class_df,
    QL_score_cutoff, constrain, MIN.CHANGE = 0.001
) {
    candidates <- rownames(score_mat)
    singlet_score <- get_singlet_score(
        cell_type_profiles, bead, UMI_tot, my_type, constrain,
        MIN.CHANGE = MIN.CHANGE
    )
    all_pairs <- TRUE
    all_pairs_class <- !is.null(class_df)
    other_class <- my_type # other types present from this class
    for (i in seq_len(length(candidates) - 1)) {
        type1 <- candidates[i]
        for (j in (i + 1):length(candidates)) {
            type2 <- candidates[j]
            if (score_mat[i, j] < min_score + QL_score_cutoff) {
                if (type1 != my_type && type2 != my_type) {
                    all_pairs <- FALSE
                }
                if (!is.null(class_df)) {
                    first_class <- (
                        class_df[my_type, "class"] == class_df[type1, "class"]
                    )
                    second_class <- (
                        class_df[my_type, "class"] == class_df[type2, "class"]
                    )
                    if (!first_class && !second_class) {
                        all_pairs_class <- FALSE
                    }
                    if (first_class && !(type1 %in% other_class)) {
                        other_class <- c(other_class, type1)
                    }
                    if (second_class && !(type2 %in% other_class)) {
                        other_class <- c(other_class, type2)
                    }
                }
            }
        }
    }
    if (is.null(class_df)) {
        all_pairs_class <- TRUE
    }
    if (all_pairs_class && !all_pairs && length(other_class) > 1) {
        all_scores <- vapply(
            other_class,
            function(type) {
                get_singlet_score(
                    cell_type_profiles, bead, UMI_tot, type, constrain,
                    MIN.CHANGE = MIN.CHANGE
                )
            },
            numeric(1)
        )
        singlet_score <- min(all_scores)
    }
    return(list(
        all_pairs = all_pairs,
        all_pairs_class = all_pairs_class,
        singlet_score = singlet_score
    ))
}

# Decomposing a single bead via doublet search
process_bead_doublet <- function(
    cell_type_info, gene_list, UMI_tot, bead,
    solution = NULL, doublet_mat = NULL, class_df = NULL, constrain = TRUE,
    verbose = FALSE, MIN.CHANGE = 0.001, confidence_threshold = 10,
    doublet_threshold = 25
) {
    cell_type_profiles <- cell_type_info[[1]][gene_list, ]
    cell_type_profiles <- cell_type_profiles * UMI_tot
    cell_type_profiles <- data.matrix(cell_type_profiles)
    QL_score_cutoff <- confidence_threshold
    doublet_like_cutoff <- doublet_threshold
    initial_weight_thresh <- 0.01
    cell_type_names <- cell_type_info[[2]]
    if (is.null(doublet_mat)) {
        doublet_mat <- Matrix(
            0.5, nrow = length(cell_type_names), ncol = length(cell_type_names)
        )
        rownames(doublet_mat) <- cell_type_names
        colnames(doublet_mat) <- cell_type_names
    }
    results_all <- decompose_full(
        cell_type_profiles, UMI_tot, bead,
        solution = solution, constrain = constrain, verbose = verbose,
        MIN_CHANGE = MIN.CHANGE
    )
    all_weights <- results_all$weights
    conv_all <- results_all$converged
    candidates <- names(which(all_weights > initial_weight_thresh))
    if (length(candidates) == 0) {
        num_cell_types <- length(cell_type_info[[2]])
        candidates <- cell_type_info[[2]][seq_len(min(3, num_cell_types))]
    }
    if (length(candidates) == 1) {
        if (candidates[1] == cell_type_info[[2]][1]) {
            candidates <- c(candidates, cell_type_info[[2]][2])
        } else {
            candidates <- c(candidates, cell_type_info[[2]][1])
        }
    }
    score_mat <- Matrix(0, nrow = length(candidates), ncol = length(candidates))
    rownames(score_mat) <- candidates
    colnames(score_mat) <- candidates

    min_score <- 0
    first_type <- NULL
    second_type <- NULL
    # Indicates whether the first (resp second) refers to class rather than type
    first_class <- FALSE
    second_class <- FALSE
    for (i in seq_len(length(candidates) - 1)) {
        type1 <- candidates[i]
        for (j in (i + 1):length(candidates)) {
            type2 <- candidates[j]
            initial_weights <- c(
                doublet_mat[type1, type2],
                doublet_mat[type2, type1]
            )
            names(initial_weights) <- c(type1, type2)
            sparse_results <- decompose_sparse(
                cell_type_profiles, UMI_tot, bead, type1, type2,
                solution = initial_weights, score_mode = TRUE,
                constrain = constrain, verbose = verbose,
                MIN.CHANGE = MIN.CHANGE, return_results = TRUE
            )
            score <- sparse_results$total_score
            score_mat[i, j] <- score
            score_mat[j, i] <- score
            results <- sparse_results$results
            doublet_mat[type1, type2] <- results$weights[type1]
            doublet_mat[type2, type1] <- results$weights[type2]
            if (is.null(second_type) || score < min_score) {
                first_type <- type1
                second_type <- type2
                min_score <- score
                doublet_results <- results
            }
        }
    }

    type1_pres <- check_pairs_type(
        cell_type_profiles, bead, UMI_tot, score_mat, min_score, first_type,
        class_df, QL_score_cutoff, constrain, MIN.CHANGE = MIN.CHANGE
    )
    type2_pres <- check_pairs_type(
        cell_type_profiles, bead, UMI_tot, score_mat, min_score, second_type,
        class_df, QL_score_cutoff, constrain, MIN.CHANGE = MIN.CHANGE
    )
    if (!type1_pres$all_pairs_class && !type2_pres$all_pairs_class) {
        spot_class <- "reject"
        singlet_score <- min_score + 2 * doublet_like_cutoff # arbitrary
    } else if (type1_pres$all_pairs_class && !type2_pres$all_pairs_class) {
        first_class <- !type1_pres$all_pairs
        singlet_score <- type1_pres$singlet_score
        spot_class <- "doublet_uncertain"
    } else if (!type1_pres$all_pairs_class && type2_pres$all_pairs_class) {
        first_class <- !type2_pres$all_pairs
        singlet_score <- type2_pres$singlet_score
        temp <- first_type
        first_type <- second_type
        second_type <- temp
        doublet_results <- lapply(doublet_results, rev)
        spot_class <- "doublet_uncertain"
    } else {
        spot_class <- "doublet_certain"
        singlet_score <- min(type1_pres$singlet_score, type2_pres$singlet_score)
        first_class <- !type1_pres$all_pairs
        second_class <- !type2_pres$all_pairs
        if (type2_pres$singlet_score < type1_pres$singlet_score) {
            temp <- first_type
            first_type <- second_type
            second_type <- temp
            doublet_results <- lapply(doublet_results, rev)
            first_class <- !type2_pres$all_pairs
            second_class <- !type1_pres$all_pairs
        }
    }

    if (singlet_score - min_score < doublet_like_cutoff) {
        spot_class <- "singlet"
    }
    doublet_weights <- doublet_results$weights
    doublet_weights <- doublet_weights / sum(doublet_weights)
    conv_doublet <- doublet_results$converged
    spot_class <- factor(
        spot_class,
        c("reject", "singlet", "doublet_certain", "doublet_uncertain")
    )

    return(list(
        all_weights = all_weights, spot_class = spot_class,
        first_type = first_type, second_type = second_type,
        doublet_weights = doublet_weights, min_score = min_score,
        singlet_score = singlet_score, conv_all = conv_all,
        conv_doublet = conv_doublet, score_mat = score_mat,
        first_class = first_class, second_class = second_class,
        doublet_mat = doublet_mat
    ))
}

# Decomposing a single bead via doublet search
process_bead_multi <- function(
    cell_type_info, gene_list, UMI_tot, bead, class_df = NULL,
    constrain = TRUE, verbose = FALSE, MIN.CHANGE = 0.001,
    MAX.TYPES = 4, confidence_threshold = 10, doublet_threshold = 25
) {
    cell_type_profiles <- cell_type_info[[1]][gene_list, ]
    cell_type_profiles <- cell_type_profiles * UMI_tot
    cell_type_profiles <- data.matrix(cell_type_profiles)
    QL_score_cutoff <- confidence_threshold
    doublet_like_cutoff <- doublet_threshold
    results_all <- decompose_full(
        cell_type_profiles, UMI_tot, bead,
        constrain = constrain, verbose = verbose, MIN_CHANGE = MIN.CHANGE
    )
    all_weights <- results_all$weights
    conv_all <- results_all$converged
    initial_weight_thresh <- 0.01
    cell_type_names <- cell_type_info[[2]]
    candidates <- names(which(all_weights > initial_weight_thresh))
    if (length(candidates) == 0) {
        stop(
            "process_bead_multi: no cell types passed weight threshold on ",
            "full mode. Please check that enough counts are present for each ",
            "pixel"
        )
    }
    cell_type_list <- c()
    curr_score <- 10000000000
    for (n in seq_len(MAX.TYPES)) {
        min_score <- curr_score
        best_type <- NULL
        for (type in candidates) {
            cur_list <- c(cell_type_list, type)
            score <- decompose_sparse(
                cell_type_profiles, UMI_tot, bead, custom_list = cur_list,
                score_mode = TRUE, constrain = constrain, verbose = verbose,
                MIN.CHANGE = MIN.CHANGE
            )
            if (score < min_score) {
                best_type <- type
                min_score <- score
            }
        }
        if (min_score > curr_score - doublet_like_cutoff) {
            break # don't add new cell type
        } else {
            cell_type_list <- c(cell_type_list, best_type)
            candidates <- setdiff(candidates, best_type)
            curr_score <- min_score
        }
    }
    # check for confidence
    conf_list <- !logical(length(cell_type_list))
    names(conf_list) <- cell_type_list
    for (type in cell_type_list) {
        for (newtype in candidates) {
            cur_list <- c(setdiff(cell_type_list, type), newtype)
            score <- decompose_sparse(
                cell_type_profiles, UMI_tot, bead, custom_list = cur_list,
                score_mode = TRUE, constrain = constrain, verbose = verbose,
                MIN.CHANGE = MIN.CHANGE
            )
            if (score < curr_score + QL_score_cutoff) {
                conf_list[type] <- FALSE
                break
            }
        }
    }
    # get final weights
    sub_results <- decompose_sparse(cell_type_profiles, UMI_tot, bead,
        custom_list = cell_type_list, score_mode = FALSE,
        constrain = constrain, verbose = verbose, MIN.CHANGE = MIN.CHANGE
    )
    sub_weights <- sub_results$weights
    conv_sub <- sub_results$converged
    return(list(
        all_weights = all_weights, cell_type_list = cell_type_list,
        conf_list = conf_list, sub_weights = sub_weights,
        min_score = curr_score, conv_all = conv_all, conv_sub = conv_sub
    ))
}

get_prediction_sparse <- function(
    cell_type_profiles, UMI_tot, p, type1, type2
) {
    cell_types <- c(type1, type2)
    reg_data <- cell_type_profiles[, cell_types, drop = FALSE]
    reg_data %*% c(p, 1 - p)
}

get_singlet_score <- function(
    cell_type_profiles, bead, UMI_tot, type, constrain,
    MIN.CHANGE = 0.001, return_vec = FALSE
) {
    if (!constrain) {
        return(decompose_sparse(
            cell_type_profiles, UMI_tot, bead, type1 = type, score_mode = TRUE,
            constrain = constrain, MIN.CHANGE = MIN.CHANGE
        ))
    }
    dummy_type <- colnames(cell_type_profiles)[1]
    if (dummy_type == type) {
        dummy_type <- colnames(cell_type_profiles)[2]
    }
    prediction <- get_prediction_sparse(
        cell_type_profiles, UMI_tot, 1, type, dummy_type
    )
    calc_log_l_vec(prediction, bead, return_vec = return_vec)
}
