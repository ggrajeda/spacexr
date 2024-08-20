test_that("plot_puck_continuous simple test", {
  # Note. Need to create reference results with
  # tinytest::run_test_file("test-plot_puck_continuous.R")

  # Arrange
  library(ggplot2)
  library(tinysnapshot)
  library(rsvg)
  # create reference
  set.seed(20240815)
  mat <- se2mat(synthetic_se(n_celltypes = 3, cells_per_type = 60, nGenes = 500))
  barcodes <- colnames(mat$puck@counts) # pixels to be used (a list of barcode names)


  # TODO This doesn't work!
  # Act
  p1 <- plot_puck_continuous(mat$puck, barcodes, mat$puck@nUMI,
                             ylimit = c(0,round(quantile(mat$puck@nUMI,0.9))),
                             title ='plot of nUMI')

  # Assert
  tinysnapshot::expect_snapshot_plot(p1, label = "plot_puck_continuous-1")
})
