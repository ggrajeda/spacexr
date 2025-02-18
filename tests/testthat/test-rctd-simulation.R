print_results <- function(assays, row_data) {
    print("=== Weights ===")
    print(assays[["weights"]])
    print("\n=== Unconfident Weights ===")
    print(assays[["weights_unconfident"]])
    print("\n=== Full Weights ===")
    print(assays[["weights_full"]])
    print("\n=== Row Data ===")
    print(as.data.frame(row_data))
}

test_that("Matches exactly on rctd_simulation", {
    ## Create RCTD objects from simulated data.
    data(rctd_simulation)
    reference <- Reference(
        rctd_simulation$reference_counts,
        rctd_simulation$reference_cell_types
    )
    spatial_rna <- SpatialRNA(
        rctd_simulation$spatial_rna_coords,
        rctd_simulation$spatial_rna_counts
    )
    rctd <- create.RCTD(spatial_rna, reference, max_cores = 1)
    parallel_rctd <- create.RCTD(spatial_rna, reference, max_cores = 2)

    ## Run RCTD sequentially.

    # Doublet mode
    doublet_se <- run.RCTD(rctd, doublet_mode = "doublet")
    doublet_assays <- SummarizedExperiment::assays(doublet_se)
    doublet_row_data <- SummarizedExperiment::rowData(doublet_se)
    expect_snapshot({
        print_results(doublet_assays, doublet_row_data)
    })

    # Multi mode
    multi_se <- run.RCTD(rctd, doublet_mode = "multi")
    multi_assays <- SummarizedExperiment::assays(multi_se)
    multi_row_data <- SummarizedExperiment::rowData(multi_se)
    expect_snapshot({
        print_results(multi_assays, multi_row_data)
    })

    # Full mode
    full_se <- run.RCTD(rctd, doublet_mode = "full")
    full_assays <- SummarizedExperiment::assays(full_se)
    full_row_data <- SummarizedExperiment::rowData(full_se)
    expect_snapshot({
        print_results(full_assays, full_row_data)
    })

    ## Run RCTD in parallel.

    # Doublet mode
    parallel_doublet_se <- run.RCTD(parallel_rctd, doublet_mode = "doublet")
    expect_equal(
        SummarizedExperiment::assays(parallel_doublet_se),
        doublet_assays
    )
    expect_equal(
        SummarizedExperiment::rowData(parallel_doublet_se),
        doublet_row_data
    )

    # Multi mode
    parallel_multi_se <- run.RCTD(parallel_rctd, doublet_mode = "multi")
    expect_equal(
        SummarizedExperiment::assays(parallel_multi_se),
        multi_assays
    )
    expect_equal(
        SummarizedExperiment::rowData(parallel_multi_se),
        multi_row_data
    )

    # Full mode
    parallel_full_se <- run.RCTD(parallel_rctd, doublet_mode = "full")
    expect_equal(
        SummarizedExperiment::assays(parallel_full_se),
        full_assays
    )
    expect_equal(
        SummarizedExperiment::rowData(parallel_full_se),
        full_row_data
    )
})
