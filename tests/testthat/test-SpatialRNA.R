test_that("SpatialRNA simple test", {
  # Arrange
  set.seed(20240812)
  rctd <- simulateSpatialRNASeq(seed = 432)

  # Act
  # Assert
  result <- rctd$s_regions[[1]]
  se <- rctd$sce[[1]]
  u <- list(
    counts = assay(se, "counts"),
    coords = as.data.frame(colData(se)[, c("x", "y")])
  )
  u$nUMI <- colSums(u$counts)
  expect_s4_class(result, "SpatialRNA")
  expect_equal(result@coords, u$coords)
  expect_equal(
    Matrix(result@counts),
    Matrix(u$counts)
  )
  expect_equal(result@nUMI, u$nUMI)
})
