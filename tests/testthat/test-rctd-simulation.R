test_that("Matches exactly on rctd_simulation", {
  # Create RCTD objects from simulated data.
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

  # Run RCTD sequentially.
  doublet_results <- run.RCTD(rctd, doublet_mode = "doublet")
  multi_results <- run.RCTD(rctd, doublet_mode = "multi")
  full_results <- run.RCTD(rctd, doublet_mode = "full")

  expect_snapshot(doublet_results@results)
  expect_snapshot(multi_results@results)
  expect_snapshot(full_results@results)

  # Run RCTD in parallel.
  parallel_doublet_results <- run.RCTD(parallel_rctd, doublet_mode = "doublet")
  parallel_multi_results <- run.RCTD(parallel_rctd, doublet_mode = "multi")
  parallel_full_results <- run.RCTD(parallel_rctd, doublet_mode = "full")

  expect_equal(doublet_results@results, parallel_doublet_results@results)
  expect_equal(multi_results@results, parallel_multi_results@results)
  expect_equal(full_results@results, parallel_full_results@results)
})
