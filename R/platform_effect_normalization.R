#' Performs Platform Effect Normalization:
#'
#' Estimates bulk cell type composition and uses this
#' to estimate platform effects and normalize cell type proportions
#'
#' @param RCTD an \code{\linkS4class{RCTD}} object after running the \code{\link{create.RCTD}} function.
#' @return Returns an \code{\linkS4class{RCTD}} object normalized for platform effects.
#' @export
#' @keywords internal
#' @examples
#' data(rctd_simulation)
#'
#' # Spatial transcriptomics data
#' library(SpatialExperiment)
#' spatial_spe <- SpatialExperiment(
#'     assay = rctd_simulation$spatial_rna_counts,
#'     spatialCoords = rctd_simulation$spatial_rna_coords
#' )
#'
#' # Reference data
#' library(SummarizedExperiment)
#' reference_se <- SummarizedExperiment(
#'     assays = list(counts = rctd_simulation$reference_counts),
#'     colData = rctd_simulation$reference_cell_types
#' )
#'
#' # Create RCTD configuration
#' rctd <- create.RCTD(spatial_spe, reference_se, max_cores = 1)
#' rctd <- fitBulk(rctd)
#' 
fitBulk <- function(RCTD) {
    bulkData <- prepareBulkData(RCTD@cell_type_info$info[[1]], RCTD@spatialRNA, RCTD@internal_vars$gene_list_bulk)
    message("fitBulk: decomposing bulk")
    decompose_results <- decompose_full(bulkData$X, sum(RCTD@spatialRNA@nUMI),
        bulkData$b,
        verbose = FALSE, constrain = FALSE, MIN_CHANGE = RCTD@config$MIN_CHANGE_BULK,
        n.iter = 100, bulk_mode = TRUE
    )
    RCTD@internal_vars$proportions <- decompose_results$weights
    RCTD@cell_type_info$renorm <- RCTD@cell_type_info$info
    RCTD@cell_type_info$renorm[[1]] <- get_norm_ref(RCTD@spatialRNA, RCTD@cell_type_info$info[[1]], RCTD@internal_vars$gene_list_bulk, decompose_results$weights)
    return(RCTD)
}

chooseSigma <- function(prediction, counts, Q_mat_all, X_vals, sigma) {
    X <- as.vector(prediction)
    X <- pmax(X, 1e-4)
    Y <- as.vector(counts)
    num_sample <- min(1000000, length(X)) # 300000
    use_ind <- sample(seq_along(X), num_sample)
    X <- X[use_ind]
    Y <- Y[use_ind]
    mult_fac_vec <- (8:12) / 10
    sigma_ind <- c(10:70, (36:100) * 2)
    si <- which(sigma_ind == round(sigma))
    sigma_ind <- sigma_ind[max(1, si - 8):min(si + 8, length(sigma_ind))]
    score_vec <- numeric(length(sigma_ind))
    for (i in seq_along(sigma_ind)) {
        sigma <- sigma_ind[i]
        set_likelihood_vars(Q_mat_all[[as.character(sigma)]], X_vals)
        best_val <- calc_log_l_vec(X * mult_fac_vec[1], Y)
        for (mult_fac in mult_fac_vec[2:length(mult_fac_vec)]) {
            best_val <- min(best_val, calc_log_l_vec(X * mult_fac, Y))
        }
        score_vec[i] <- best_val
    }
    sigma <- sigma_ind[which.min(score_vec)]
    return(sigma)
}

#' Estimates sigma_c by maximum likelihood
#'
#' @param RCTD an \code{\linkS4class{RCTD}} object after running the \code{\link{fitBulk}} function.
#' @return Returns an \code{\linkS4class{RCTD}} with the estimated \code{sigma_c}.
#' @export
#' @keywords internal
#' @examples
#' data(rctd_simulation)
#'
#' # Spatial transcriptomics data
#' library(SpatialExperiment)
#' spatial_spe <- SpatialExperiment(
#'     assay = rctd_simulation$spatial_rna_counts,
#'     spatialCoords = rctd_simulation$spatial_rna_coords
#' )
#'
#' # Reference data
#' library(SummarizedExperiment)
#' reference_se <- SummarizedExperiment(
#'     assays = list(counts = rctd_simulation$reference_counts),
#'     colData = rctd_simulation$reference_cell_types
#' )
#'
#' # Create RCTD configuration
#' rctd <- create.RCTD(spatial_spe, reference_se, max_cores = 1)
#' 
#' rctd <- fitBulk(rctd)
#' rctd <- choose_sigma_c(rctd)
#' 
choose_sigma_c <- function(RCTD) {
    puck <- RCTD@spatialRNA
    MIN_UMI <- RCTD@config$UMI_min_sigma
    sigma <- 100
    Q_mat_all <- get_Q_all()
    sigma_vals <- names(Q_mat_all)
    X_vals <- get_X_vals()
    # get initial classification
    N_fit <- min(RCTD@config$N_fit, sum(puck@nUMI > MIN_UMI))
    if (N_fit == 0) {
        stop("choose_sigma_c determined a N_fit of 0! This is probably due to unusually low UMI counts per bead in your dataset. Try decreasing the parameter UMI_min_sigma. It currently is ", MIN_UMI, " but none of the beads had counts larger than that.")
    }
    fit_ind <- sample(names(puck@nUMI[puck@nUMI > MIN_UMI]), N_fit)
    beads <- t(as.matrix(puck@counts[RCTD@internal_vars$gene_list_reg, fit_ind]))
    message("chooseSigma: using initial Q_mat with sigma = ", sigma / 100)
    for (iter in seq_len(RCTD@config$N_epoch)) {
        set_likelihood_vars(Q_mat_all[[as.character(sigma)]], X_vals)
        results <- decompose_batch(puck@nUMI[fit_ind], RCTD@cell_type_info$renorm[[1]], beads, RCTD@internal_vars$gene_list_reg, constrain = FALSE, max_cores = RCTD@config$max_cores)
        weights <- Matrix(0, nrow = N_fit, ncol = RCTD@cell_type_info$renorm[[3]])
        rownames(weights) <- fit_ind
        colnames(weights) <- RCTD@cell_type_info$renorm[[2]]
        for (i in seq_len(N_fit)) {
            weights[i, ] <- results[[i]]$weights
        }
        prediction <- sweep(as.matrix(RCTD@cell_type_info$renorm[[1]][RCTD@internal_vars$gene_list_reg, ]) %*% t(as.matrix(weights)), 2, puck@nUMI[fit_ind], "*")
        message("Likelihood value: ", calc_log_l_vec(as.vector(prediction), as.vector(t(beads))))
        sigma_prev <- sigma
        sigma <- chooseSigma(prediction, t(beads), Q_mat_all, X_vals, sigma)
        message("Sigma value: ", sigma / 100)
        if (sigma == sigma_prev) {
            break
        }
    }
    RCTD@internal_vars$sigma <- sigma / 100
    RCTD@internal_vars$Q_mat <- Q_mat_all[[as.character(sigma)]]
    RCTD@internal_vars$X_vals <- X_vals
    return(RCTD)
}
