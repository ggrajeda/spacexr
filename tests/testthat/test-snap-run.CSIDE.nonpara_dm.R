test_that("run.CSIDE.nonparametric design matrix test",{
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

  # Act
  X <- build.designmatrix.nonparam(rctd,df = 6)
  barcodes <- rownames(X)
  r <- run.CSIDE(rctd, X, barcodes, gene_threshold = .001,
                                cell_type_threshold = 10, fdr = 0.25)


  # Assert
  expect_snapshot({
    print(r@de_results$all_gene_list, digits=5)
  })
})
