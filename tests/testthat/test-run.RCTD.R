test_that("run.RCTD simple test", {
    # Arrange
    # create reference
    set.seed(20240815)
    mat <- se2mat(synthetic_se(n_celltypes = 3, cells_per_type = 60, nGenes = 500))
    rctd <- create.RCTD(mat$puck, mat$reference, max_cores = 1)

    # Act/Assert
   expect_snapshot({
      result <- run.RCTD(rctd, doublet_mode = 'doublet')
      list(cell_type_info = result@cell_type_info$renorm,
           de_results = result@de_results,
           results = result@results)
      u <- result@results$results_df
      print(cf <- table(substr(rownames(result@results$results_df),1,3), result@results$results_df$first_type))
   })
 })
