test_that("plot_puck_continuous simple test", {

  # Arrange
  # create reference
  set.seed(20240815)
  mat <- sce_to_rctd(synthetic_se(n_celltypes = 3,
                             cells_per_type = 60,
                             nGenes = 500,
                             seed = 987))
  barcodes <- colnames(mat$puck[[1]]@counts) # pixels to be used (a list of barcode names)



  # Act/Assert
  vdiffr::expect_doppelganger("plot_puck_continuous",
        plot_puck_continuous(mat$puck[[1]], barcodes, mat$puck[[1]]@nUMI,
                             title ='plot of nUMI')
        )
})
