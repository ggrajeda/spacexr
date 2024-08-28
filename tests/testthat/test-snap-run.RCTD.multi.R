test_that("run.RCTD.multi", {
  # Arrange
  # create reference
  set.seed(20240815)
  mat <- sce_to_rctd(synthetic_se(n_celltypes = 3,
                                  cells_per_type = 60,
                                  nGenes = 500,
                                  seed = 886))
  rctd <- create.RCTD(mat$puck[[1]], mat$reference, max_cores = 1)

  # Act/Assert
  expect_snapshot({
    result <- run.RCTD(rctd, doublet_mode = 'multi')
    list(cell_type_info = result@cell_type_info$renorm,
         de_results = result@de_results,
         results = result@results)
    })
})
