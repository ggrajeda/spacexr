test_that("run.RCTD.replicates", {
    # Arrange
    # create reference
    set.seed(20240815)
    mat <- simulateSpatialRNASeq(n_celltypes = 3,
                        samples_per_type = 60,
                        reference_samples = 30,
                        nGenes = 500,
                        seed = 886,
                        replicates = 3)
    rctd <- create.RCTD.replicates(mat$s_regions, mat$reference,
                                   replicate_names = names(mat$s_regions),
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
