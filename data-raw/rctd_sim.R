library(SpatialExperiment)

devtools::load_all()

gene_name <- function(g) paste0("g", g)
cell_type_name <- function(ct) paste0("ct", ct)

# Generates a matrix (num_genes x num_cell_types) where each column represents
# the mean expression profile for a cell type. Genes are selected to be
# differentially expressed with probability prob_de.
create_expression_profile <- function(num_genes, num_cell_types, prob_de) {
    # Generate a base expression profile for all cell types.
    base_expr_vec <- round(runif(num_genes, min = 0, max = 10), digits = 1)
    expr_profile <- replicate(num_cell_types, base_expr_vec)

    # Introduce differential expression for a random set of genes.
    de_genes <- sample(seq_len(num_genes), size = floor(num_genes * prob_de))
    for (ct in seq_len(num_cell_types)) {
        de_mult <- sample(c(0.5, 2), size = length(de_genes), replace = TRUE)
        expr_profile[de_genes, ct] <- expr_profile[de_genes, ct] * de_mult
    }
    expr_profile
}

# Generates a list of pure mixtures, such that each cell type appears in exactly
# one mixture.
pure_mixtures <- function(num_cell_types, num_samples) {
    mixtures <- lapply(seq_len(num_cell_types), function(i) {
        list(prop = as.numeric(seq_len(num_cell_types) == i), n = num_samples)
    })
    names(mixtures) <- cell_type_name(seq_len(num_cell_types))
    mixtures
}

# Generates a gene expression matrix for a cell type mixture.
# See simulate_spatial_transcriptomics for details on specifying the mixture.
create_mixed_counts <- function(expression_profile, mixture) {
    prop <- mixture$prop
    if (abs(sum(prop) - 1) > 1e-6) {
        stop("Could not create mixture. Proportions do not sum to 1.")
    } else if (length(prop) != ncol(expression_profile)) {
        stop(
            "Could not create mixture. Length of proportions (", length(prop),
            ") does not match number of cell types (", ncol(expression_profile),
            ")."
        )
    }
    num_genes <- nrow(expression_profile)
    cell_type_expression_matrices <- lapply(seq_along(prop), function(ct) {
        gene_counts <- rpois(num_genes * mixture$n, expression_profile[, ct])
        prop[ct] * matrix(gene_counts, nrow = num_genes, ncol = mixture$n)
    })

    expression_matrix <- Reduce(`+`, cell_type_expression_matrices)
    apply(expression_matrix, 2, as.integer)
}

# Generates a gene expression matrix for a list of cell type mixtures. This is
# returned as a SummarizedExperiment, with column data specifying the mixture
# type (mixture_type) and the instance of the mixture type (sample_num).
# See simulate_spatial_transcriptomics for details on specifying the mixtures.
simulate_counts <- function(expression_profile, mixtures) {
    simulated_counts <- do.call(cbind, lapply(mixtures, function(m) {
        create_mixed_counts(expression_profile, m)
    }))
    num_genes <- nrow(expression_profile)
    rownames(simulated_counts) <- gene_name(seq_len(num_genes))

    # Create column IDs.
    num_samples <- vapply(mixtures, function(m) m$n, numeric(1))
    mixture_type <- as.factor(rep(names(mixtures), num_samples))
    sample_num <- unlist(lapply(mixtures, function(m) seq_len(m$n)))
    col_data <- data.frame(mixture_type = mixture_type, sample_num = sample_num)

    SummarizedExperiment(assays = simulated_counts, colData = col_data)
}

# Generates a simulated Reference object from the mean expression profile of
# every cell type.
simulate_reference_object <- function(expression_profile, num_samples) {
    reference_mixtures <- pure_mixtures(ncol(expression_profile), num_samples)
    reference_data <- simulate_counts(expression_profile, reference_mixtures)
    reference_cell_type <- colData(reference_data)$mixture_type
    names(reference_cell_type) <- colnames(reference_data)

    spacexr:::createReference(
        counts = assay(reference_data),
        cell_types = reference_cell_type,
        min_UMI = 0
    )
}

# Generates a simulated SpatialRNA object from the mean expression profile of
# every cell type and a list of mixtures.
simulate_spatial_rna_object <- function(expression_profile, test_mixtures) {
    test_data <- simulate_counts(expression_profile, test_mixtures)
    sample_num <- colData(test_data)$sample_num - 1
    message(sample_num)
    coords <- data.frame(
        x = as.integer(colData(test_data)$mixture_type) + (sample_num %% 2) / 3,
        y = (sample_num %/% 2) / 2
    )
    rownames(coords) <- colnames(test_data)

    spacexr:::createSpatialRNA(coords = coords, counts = assay(test_data))
}

#' Generate Simulated Spatial Transcriptomics Data
#'
#' @param num_genes Number of genes.
#' @param num_cell_types Number of cell types.
#' @param num_reference_samples Number of samples of each cell type to include
#'   in the Reference object.
#' @param test_mixtures Mixtures of cell types used to create the SpatialRNA
#'   object, represented as a named list of named lists.
#'
#'   Each inner list should have two elements:
#'   \itemize{
#'   \item{\code{prop}: }{Proportion of the cell types comprising the mixture,
#'   represented by a vector whose length is equal to the number of cell types
#'   and whose entries sum to 1.}
#'   }
#'   \item{\code{n}: }{Number of samples of the mixture to create}
#'   Default is 25 samples of a pure mixture of each cell type
#'
#'   Example: \code{list(mx1 = list(prop = c(0.8, 0, 0.2), n = 10))}.
#'
#'   This specifies 10 samples of mixture \code{mx1}, consisting 80\% of cell
#'   type 1 and 20\% of cell type 3.
#' @param prob_de Probability that a gene will be differentially expressed.
#'
#' @return A named list containing the data for a simulated Reference object,
#'  a simulated SpatialRNA object, and the true labels for the SpatialRNA
#'  samples.
simulate_spatial_transcriptomics <- function(
    num_genes = 750, num_cell_types = 3, num_reference_samples = 25,
    test_mixtures = pure_mixtures(num_cell_types, 25), prob_de = 0.5
) {
    expression_profile <- create_expression_profile(
        num_genes, num_cell_types, prob_de
    )
    reference <- simulate_reference_object(
        expression_profile, num_reference_samples
    )
    spatial_rna <- simulate_spatial_rna_object(
        expression_profile,
        test_mixtures
    )
    coords <- as.matrix(spatial_rna@coords)

    true_proportions <- do.call(cbind, lapply(test_mixtures, function(m) {
        replicate(m$n, m$prop)
    }))
    colnames(true_proportions) <- rownames(coords)
    rownames(true_proportions) <- cell_type_name(seq_len(num_cell_types))
    proportions_spe = SpatialExperiment(
        assays = list(weights = true_proportions),
        spatialCoords = coords
    )

    list(
        reference_counts = reference@counts,
        reference_cell_types = data.frame(cell_type = reference@cell_types),
        spatial_rna_coords = coords,
        spatial_rna_counts = spatial_rna@counts,
        proportions_spe = proportions_spe
    )
}

set.seed(123456789)
rctdSim <- simulate_spatial_transcriptomics(test_mixtures = list(
    mx1 = list(prop = c(0.9, 0.1, 0.0), n = 6),
    mx2 = list(prop = c(0.2, 0.4, 0.4), n = 6)
))
usethis::use_data(rctdSim, overwrite = TRUE)
