#' Performs Platform Effect Normalization:
#'
#' Estimates bulk cell type composition and uses this to estimate platform
#' effects and normalize cell type proportions
#'
#' @param RCTD an \code{\linkS4class{RctdConfig}} object after running the
#'   \code{\link{createRctd}} function.
#' @return Returns an \code{\linkS4class{RctdConfig}} object normalized for
#'   platform effects.
#' @export
#' @keywords internal
#' @examples
#' data(rctdSim)
#'
#' # Spatial transcriptomics data
#' library(SpatialExperiment)
#' spatial_spe <- SpatialExperiment(
#'     assay = rctdSim$spatial_rna_counts,
#'     spatialCoords = rctdSim$spatial_rna_coords
#' )
#'
#' # Reference data
#' library(SummarizedExperiment)
#' reference_se <- SummarizedExperiment(
#'     assays = list(counts = rctdSim$reference_counts),
#'     colData = rctdSim$reference_cell_types
#' )
#'
#' # Create RCTD configuration
#' rctd <- createRctd(spatial_spe, reference_se, max_cores = 1)
#' rctd <- fitBulk(rctd)
#'
fitBulk <- function(RCTD) {
    bulkData <- prepareBulkData(
        cell_type_info(RCTD)$info[[1]],
        spatialRNA(RCTD), internal_vars(RCTD)$gene_list_bulk
    )
    message("fitBulk: decomposing bulk")
    decompose_results <- decompose_full(bulkData$X, sum(nUMI(spatialRNA(RCTD))),
        bulkData$b,
        verbose = FALSE, constrain = FALSE,
        MIN_CHANGE = config(RCTD)$MIN_CHANGE_BULK, n.iter = 100,
        bulk_mode = TRUE
    )
    internal_vars(RCTD)$proportions <- decompose_results$weights
    cell_type_info(RCTD)$renorm <- cell_type_info(RCTD)$info
    cell_type_info(RCTD)$renorm[[1]] <- get_norm_ref(
        spatialRNA(RCTD), cell_type_info(RCTD)$info[[1]],
        internal_vars(RCTD)$gene_list_bulk, decompose_results$weights
    )
    RCTD
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
    score_vec <- vapply(
        sigma_ind,
        function(sigma) {
            set_likelihood_vars(Q_mat_all[[as.character(sigma)]], X_vals)
            neg_log_likelihoods <- vapply(
                mult_fac_vec,
                function(mult_fac) calc_log_l_vec(X * mult_fac, Y),
                numeric(1)
            )
            min(neg_log_likelihoods)
        },
        numeric(1)
    )
    sigma_ind[which.min(score_vec)]
}

#' Estimates sigma_c by maximum likelihood
#'
#' @param RCTD an \code{\linkS4class{RctdConfig}} object after running the
#'   \code{\link{fitBulk}} function.
#' @return Returns an \code{\linkS4class{RctdConfig}} with the estimated
#'   \code{sigma_c}.
#' @export
#' @keywords internal
#' @examples
#' data(rctdSim)
#'
#' # Spatial transcriptomics data
#' library(SpatialExperiment)
#' spatial_spe <- SpatialExperiment(
#'     assay = rctdSim$spatial_rna_counts,
#'     spatialCoords = rctdSim$spatial_rna_coords
#' )
#'
#' # Reference data
#' library(SummarizedExperiment)
#' reference_se <- SummarizedExperiment(
#'     assays = list(counts = rctdSim$reference_counts),
#'     colData = rctdSim$reference_cell_types
#' )
#'
#' # Create RCTD configuration
#' rctd <- createRctd(spatial_spe, reference_se, max_cores = 1)
#' rctd <- fitBulk(rctd)
#' rctd <- choose_sigma_c(rctd)
#'
choose_sigma_c <- function(RCTD) {
    puck <- spatialRNA(RCTD)
    MIN_UMI <- config(RCTD)$UMI_min_sigma
    sigma <- 100
    Q_mat_all <- get_Q_all()
    X_vals <- get_X_vals()

    # get initial classification
    N_fit <- min(config(RCTD)$N_fit, sum(nUMI(puck) > MIN_UMI))
    if (N_fit == 0) {
        stop(
            "choose_sigma_c determined a N_fit of 0! This is probably due to ",
            "unusually low UMI counts per bead in your dataset. Try ",
            "decreasing the parameter UMI_min_sigma. It currently is ", MIN_UMI,
            " but none of the beads had counts larger than that."
        )
    }

    fit_ind <- sample(names(nUMI(puck)[nUMI(puck) > MIN_UMI]), N_fit)
    beads <- t(as.matrix(
        counts(puck)[internal_vars(RCTD)$gene_list_reg, fit_ind]
    ))
    message("chooseSigma: using initial Q_mat with sigma = ", sigma / 100)

    for (iter in seq_len(config(RCTD)$N_epoch)) {
        set_likelihood_vars(Q_mat_all[[as.character(sigma)]], X_vals)
        results <- decompose_batch(
            nUMI(puck)[fit_ind], cell_type_info(RCTD)$renorm[[1]], beads,
            internal_vars(RCTD)$gene_list_reg,
            constrain = FALSE, max_cores = config(RCTD)$max_cores
        )
        cell_types <- cell_type_info(RCTD)$renorm[[2]]
        weights <- vapply(
            results,
            function(x) x$weights,
            numeric(length(cell_types))
        )
        colnames(weights) <- fit_ind
        rownames(weights) <- cell_types

        gene_list <- internal_vars(RCTD)$gene_list_reg
        profiles <- cell_type_info(RCTD)$renorm[[1]][gene_list, ]
        prediction <- sweep(
            as.matrix(profiles) %*% weights,
            2,
            nUMI(puck)[fit_ind],
            "*"
        )
        message(
            "Likelihood value: ",
            calc_log_l_vec(as.vector(prediction),
            as.vector(t(beads)))
        )
        sigma_prev <- sigma
        sigma <- chooseSigma(prediction, t(beads), Q_mat_all, X_vals, sigma)
        message("Sigma value: ", sigma / 100)
        if (sigma == sigma_prev) {
            break
        }
    }

    internal_vars(RCTD)$sigma <- sigma / 100
    internal_vars(RCTD)$Q_mat <- Q_mat_all[[as.character(sigma)]]
    internal_vars(RCTD)$X_vals <- X_vals
    RCTD
}
