test_that("full", {
  # Arrange
  # create reference
  set.seed(20240815)
  mat <- sce_to_rctd(synthetic_se(n_celltypes = 3,
                                  cells_per_type = 60,
                                  nGenes = 500,
                                  seed = 886))

  # Act
  rctd <- create.RCTD(mat$puck[[1]], mat$reference, max_cores = 1)
  rctd_multi <- create.RCTD(mat$puck[[1]], mat$reference, max_cores = 2)

  raw_result <- run.RCTD(rctd, doublet_mode = 'full')
  result <- rctd_result_list(raw_result)
  raw_result_multi <- run.RCTD(rctd_multi, doublet_mode = 'full')
  result_multi <- rctd_result_list(raw_result_multi)

  # Assert
  expect_snapshot({
    print_rctd_results(result)
  })

  expect_snapshot({
    print_rctd_results(result_multi)
  })

  # Is the mutli-core answer identical with the single core answer
  expect_true(rctd_results_equal(result, result_multi))
})
