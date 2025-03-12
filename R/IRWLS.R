solveOLS <- function(S, B, solution, constrain = TRUE) {
    D <- t(S) %*% S
    d <- t(S) %*% B
    norm_factor <- norm(D, "2")
    D <- D / norm_factor
    d <- d / norm_factor
    epsilon <- 1e-7
    D <- D + epsilon * diag(length(d))
    A <- cbind(diag(dim(S)[2]))
    bzero <- c(rep(0, dim(S)[2]))
    if (constrain) {
        A_const <- t(rbind(1, A))
        b_const <- c(1 - sum(solution), bzero)
        solution <- quadprog::solve.QP(D, d, A_const, b_const, meq = 1)$solution
    } else {
        solution <- quadprog::solve.QP(D, d, A, bzero, meq = 0)$solution
    }
    names(solution) <- colnames(S)
    solution
}

# solve using WLS with weights dampened by a certain dampening constant
# if constrain, constrain the weights to sum up to 1
solveIRWLS.weights <- function(
    S, B, nUMI,
    OLS = FALSE, constrain = TRUE, verbose = FALSE,
    n.iter = 50, MIN_CHANGE = .001, bulk_mode = FALSE, solution = NULL
) {
    if (!bulk_mode) {
        K_val <- get_K_val()
        B[B > K_val] <- K_val
    }
    solution <- numeric(dim(S)[2])
    solution[] <- 1 / length(solution)
    if (OLS) {
        # First solve OLS. Use this solution to find starting point for weights.
        solution <- solveOLS(S, B, solution, constrain = constrain)
        return(list(weights = solution, converged = TRUE))
    }
    names(solution) <- colnames(S)

    index <- which(
        upper.tri(matrix(0, ncol = ncol(S), nrow = ncol(S)), diag = TRUE),
        arr.ind = TRUE
    )
    index <- index[order(index[, 1], index[, 2]), , drop = FALSE]
    S_mat <- S[, index[, 1]] * S[, index[, 2]]

    iterations <- 0 # now use dampened WLS, iterate weights until convergence
    changes <- c()
    change <- 1
    while (change > MIN_CHANGE && iterations < n.iter) {
        new_solution <- solveWLS(
            S, S_mat, B, solution, nUMI,
            constrain = constrain, bulk_mode = bulk_mode
        )
        change <- norm(as.matrix(new_solution - solution))
        if (verbose) {
            message("Change: ", change)
            message(solution)
        }
        solution <- new_solution
        iterations <- iterations + 1
    }
    return(list(weights = solution, converged = (change <= MIN_CHANGE)))
}

solveWLS <- function(
    S, S_mat, B, initialSol, nUMI,
    bulk_mode = FALSE, constrain = FALSE
) {
    solution <- pmax(initialSol, 0)
    prediction <- abs(S %*% solution)
    threshold <- max(1e-4, nUMI * 1e-7)
    prediction[prediction < threshold] <- threshold
    gene_list <- rownames(S)
    derivatives <- get_der_fast(
        S, S_mat, B, gene_list, prediction, bulk_mode = bulk_mode
    )
    d_vec <- -derivatives$grad
    D_mat <- psd(derivatives$hess)
    norm_factor <- norm(D_mat, "2")
    D_mat <- D_mat / norm_factor
    d_vec <- d_vec / norm_factor
    epsilon <- 1e-7
    D_mat <- D_mat + epsilon * diag(length(d_vec))
    A <- cbind(diag(dim(S)[2]))
    bzero <- (-solution)
    alpha <- 0.3
    if (constrain) {
        A_const <- t(rbind(1, A))
        b_const <- c(1 - sum(solution), bzero)
        step <- quadprog::solve.QP(D_mat, d_vec, A_const, b_const, meq = 1)
        solution <- solution + alpha * step$solution
    } else {
        step <- quadprog::solve.QP(D_mat, d_vec, A, bzero, meq = 0)
        solution <- solution + alpha * step$solution
    }
    names(solution) <- colnames(S)
    solution
}
