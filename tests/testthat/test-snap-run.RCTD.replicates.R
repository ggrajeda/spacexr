test_that("run.RCTD doublet", {
    # Arrange
    # create reference
    set.seed(20240815)
    sce <- synthetic_se(n_celltypes = 3,
                        cells_per_type = 60,
                        nGenes = 500,
                        seed = 886)
    mat <- sce_to_rctd(sce, replicates = 3)
    rctd <- create.RCTD.replicates(mat$pucks, mat$reference, replicate_names = names(mat$pucks),
                                   max_cores = 1)

    # Act/Assert
   expect_snapshot({
      result <- run.RCTD.replicates(rctd, doublet_mode = 'doublet')
      list(cell_type_info = result@RCTD.reps, result@group_ids)
      for (i in seq_along(result@RCTD.reps)) {
        u <- result@RCTD.reps[[i]]
        print(table(substr(rownames(u@results$results_df),1,3), u@results$results_df$first_type))
      }
   })
 })
