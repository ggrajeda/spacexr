test_that("run.RCTD.multi", {
  # Arrange
  set.seed(20240815)
  mat <- simulateSpatialRNASeq(n_celltypes = 3,
                                  samples_per_type = 60,
                                  nGenes = 500,
                                  seed = 886)

  # Act
  rctd <- create.RCTD(mat$s_regions[[1]], mat$reference, max_cores = 1)
  rctd_multi <- create.RCTD(mat$s_regions[[1]], mat$reference, max_cores = 2)

  raw_result <- run.RCTD(rctd, doublet_mode = 'multi')
  result <- rctd_result_list(raw_result)
  raw_result_multi <- run.RCTD(rctd_multi, doublet_mode = 'multi')
  result_multi <- rctd_result_list(raw_result_multi)

  # Assert
  expect_snapshot({
    print_rctd_results(result)
  })

  expect_snapshot({
    print_rctd_results(result_multi)
  })

  # Is the mutli-core answer identical with the single core answer
  expect_rctd_results_equal(result, result_multi)
})


