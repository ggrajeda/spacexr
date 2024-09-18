test_that("run.CSIDE.nonparametric simple test",{
  # This is roughly follows the differential-expression vignette

  # Arrange
  # create reference
  set.seed(20240918)
  mat <- simulateSpatialRNASeq(n_celltypes = 10,
                               samples_per_type = 70,
                               reference_samples = 25,
                               nGenes = 500,
                               seed = 2109)
  rctd <- create.RCTD(mat$s_regions[[1]], mat$reference, max_cores = 1,
                      CELL_MIN_INSTANCE = 19)
  rctd <- run.RCTD(rctd, doublet_mode = 'doublet')
  rctd_multi <- rctd
  rctd@config$max_cores <- 1
  rctd_multi@config$max_cores <- 2

  # Act
  r <- run.CSIDE.nonparam(rctd,
                df = 6, gene_threshold = .001,
                cell_type_threshold = 10, fdr = 0.25)

  r_multi <- run.CSIDE.nonparam(rctd_multi,
                                df = 6, gene_threshold = .001,
                                cell_type_threshold = 10, fdr = 0.25)

  # Assert
  expect_snapshot({
    print(r@de_results$all_gene_list, digits=5)
  })

  expect_cside_results_equal(r, r_multi)
})
