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

test_that("Matches exactly on simRctd", {
    ## Create RCTD configurations from simulated data.
    data(simRctd)

    spatial_spe <- SpatialExperiment::SpatialExperiment(
        assay = simRctd$spatial_rna_counts,
        spatialCoords = simRctd$spatial_rna_coords
    )
    reference_se <- SummarizedExperiment::SummarizedExperiment(
        assays = list(counts = simRctd$reference_counts),
        colData = simRctd$reference_cell_types
    )
    rctd <- createRctd(spatial_spe, reference_se, max_cores = 1)
    parallel_rctd <- createRctd(spatial_spe, reference_se, max_cores = 2)

    ## Run RCTD sequentially.

    # Doublet mode
    doublet_se <- runRctd(rctd, rctd_mode = "doublet")
    doublet_assays <- SummarizedExperiment::assays(doublet_se)
    doublet_row_data <- SummarizedExperiment::rowData(doublet_se)
    expect_snapshot({
        print_results(doublet_assays, doublet_row_data)
    })

    # Multi mode
    multi_se <- runRctd(rctd, rctd_mode = "multi")
    multi_assays <- SummarizedExperiment::assays(multi_se)
    multi_row_data <- SummarizedExperiment::rowData(multi_se)
    expect_snapshot({
        print_results(multi_assays, multi_row_data)
    })

    # Full mode
    full_se <- runRctd(rctd, rctd_mode = "full")
    full_assays <- SummarizedExperiment::assays(full_se)
    full_row_data <- SummarizedExperiment::rowData(full_se)
    expect_snapshot({
        print_results(full_assays, full_row_data)
    })

    ## Run RCTD in parallel.

    # Doublet mode
    parallel_doublet_se <- runRctd(parallel_rctd, rctd_mode = "doublet")
    expect_equal(
        SummarizedExperiment::assays(parallel_doublet_se),
        doublet_assays
    )
    expect_equal(
        SummarizedExperiment::rowData(parallel_doublet_se),
        doublet_row_data
    )

    # Multi mode
    parallel_multi_se <- runRctd(parallel_rctd, rctd_mode = "multi")
    expect_equal(
        SummarizedExperiment::assays(parallel_multi_se),
        multi_assays
    )
    expect_equal(
        SummarizedExperiment::rowData(parallel_multi_se),
        multi_row_data
    )

    # Full mode
    parallel_full_se <- runRctd(parallel_rctd, rctd_mode = "full")
    expect_equal(
        SummarizedExperiment::assays(parallel_full_se),
        full_assays
    )
    expect_equal(
        SummarizedExperiment::rowData(parallel_full_se),
        full_row_data
    )
})
