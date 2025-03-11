print_results <- function(assays, col_data, coords) {
    # Assays are transposed so that printed column names are not suppressed.
    transpose <- function(x) {
      if(is.null(x)) return(NULL)
      t(x)
    }
    print("=== Weights ===")
    print(transpose(assays[["weights"]]))
    print("\n=== Unconfident Weights ===")
    print(transpose(assays[["weights_unconfident"]]))
    print("\n=== Full Weights ===")
    print(transpose(assays[["weights_full"]]))
    print("\n=== Column Data ===")
    print(as.data.frame(col_data))
    print("\n=== Coordinates ===")
    print(as.data.frame(coords))
}

test_that("Matches exactly on rctdSim", {
    ## Create RCTD configurations from simulated data.
    data(rctdSim)

    spatial_spe <- SpatialExperiment::SpatialExperiment(
        assay = rctdSim$spatial_rna_counts,
        spatialCoords = rctdSim$spatial_rna_coords
    )
    reference_spe <- SummarizedExperiment::SummarizedExperiment(
        assays = list(counts = rctdSim$reference_counts),
        colData = rctdSim$reference_cell_types
    )

    ## Run RCTD sequentially.

    # Doublet mode
    doublet_spe <- runRctd(
        spatial_spe, reference_spe, rctd_mode = "doublet", max_cores = 1
    )
    doublet_assays <- SummarizedExperiment::assays(doublet_spe)
    doublet_col_data <- SummarizedExperiment::colData(doublet_spe)
    doublet_coords <- SpatialExperiment::spatialCoords(doublet_spe)
    expect_snapshot({
        print_results(doublet_assays, doublet_col_data, doublet_coords)
    })

    # Multi mode
    multi_spe <- runRctd(
        spatial_spe, reference_spe, rctd_mode = "multi", max_cores = 1
    )
    multi_assays <- SummarizedExperiment::assays(multi_spe)
    multi_col_data <- SummarizedExperiment::colData(multi_spe)
    multi_coords <- SpatialExperiment::spatialCoords(multi_spe)
    expect_snapshot({
        print_results(multi_assays, multi_col_data, multi_coords)
    })

    # Full mode
    full_spe <- runRctd(
        spatial_spe, reference_spe, rctd_mode = "full", max_cores = 1
    )
    full_assays <- SummarizedExperiment::assays(full_spe)
    full_col_data <- SummarizedExperiment::colData(full_spe)
    full_coords <- SpatialExperiment::spatialCoords(full_spe)
    expect_snapshot({
        print_results(full_assays, full_col_data, full_coords)
    })

    ## Run RCTD in parallel.

    # Doublet mode
    parallel_doublet_spe <- runRctd(
        spatial_spe, reference_spe, rctd_mode = "doublet", max_cores = 2
    )
    expect_equal(
        SummarizedExperiment::assays(parallel_doublet_spe),
        doublet_assays
    )
    expect_equal(
        SummarizedExperiment::colData(parallel_doublet_spe),
        doublet_col_data
    )

    # Multi mode
    parallel_multi_spe <- runRctd(
        spatial_spe, reference_spe, rctd_mode = "multi", max_cores = 2
    )
    expect_equal(
        SummarizedExperiment::assays(parallel_multi_spe),
        multi_assays
    )
    expect_equal(
        SummarizedExperiment::colData(parallel_multi_spe),
        multi_col_data
    )

    # Full mode
    parallel_full_spe <- runRctd(
        spatial_spe, reference_spe, rctd_mode = "full", max_cores = 2
    )
    expect_equal(
        SummarizedExperiment::assays(parallel_full_spe),
        full_assays
    )
    expect_equal(
        SummarizedExperiment::colData(parallel_full_spe),
        full_col_data
    )
})
