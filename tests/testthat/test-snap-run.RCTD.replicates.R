test_that("run.RCTD.replicates", {
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

    # Act
    raw_result <- run.RCTD.replicates(rctd, doublet_mode = 'doublet')

    # Assert
    expect_snapshot({
      for (i in raw_result@RCTD.reps) {
        result <- rctd_result_list(i)
        print_rctd_results(result)
      }
   })
 })
