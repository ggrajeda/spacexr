test_that("run.RCTD.multi", {
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

  # list of externally relevant results
  result_list <- \(u) {
    list(cell_type_info = u@cell_type_info$renorm,
         de_results = u@de_results,
         results = u@results)
  }
  raw_result <- run.RCTD(rctd, doublet_mode = 'multi')
  result <- result_list(raw_result)

  raw_result_multi <- run.RCTD(rctd_multi, doublet_mode = 'multi')
  result_multi <- result_list(raw_result)


  # Assert
  expect_snapshot({
    result
    u <- result$results$results_df
    print(cf <- table(substr(rownames(u),1,3), u$first_type))
  })

  expect_equal(result_multi, result)
})
