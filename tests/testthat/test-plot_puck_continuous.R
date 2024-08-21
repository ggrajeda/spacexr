test_that("plot_puck_continuous simple test", {

  # Arrange
  # create reference
  set.seed(20240815)
  mat <- se2mat(synthetic_se(n_celltypes = 3,
                             cells_per_type = 60,
                             nGenes = 500,
                             seed = 987))
  barcodes <- colnames(mat$puck@counts) # pixels to be used (a list of barcode names)



  # Act/Assert
  vdiffr::expect_doppelganger("plot_puck_continuous",
        plot_puck_continuous(mat$puck, barcodes, mat$puck@nUMI,
                             ylimit = c(0,round(quantile(mat$puck@nUMI,0.9))),
                             title ='plot of nUMI'))
})
