test_that("plot_puck_continuous simple test", {

  # Arrange
  # create reference
  set.seed(20240815)
  mat <- simulateSpatialRNASeq(n_celltypes = 3,
                             samples_per_type = 60,
                             nGenes = 500,
                             seed = 987)
  barcodes <- colnames(mat$s_regions[[1]]@counts) # pixels to be used (a list of barcode names)



  # Act/Assert
  vdiffr::expect_doppelganger("plot_puck_continuous",
        plot_puck_continuous(mat$s_regions[[1]], barcodes, mat$s_regions[[1]]@nUMI,
                             title ='plot of nUMI')
        )
})
