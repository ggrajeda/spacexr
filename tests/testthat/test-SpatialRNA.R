test_that("SpatialRNA simple test", {
  # Arrange
  set.seed(20240812)
  scd <- synthetic_se(seed = 432)

  # Act
  rctd <- sce_to_rctd(scd, 0)

  # Assert
  result <- rctd$s_regions[[1]]
  se <- rctd$se[[1]]
  u <- list(counts = assay(se, "counts"),
            coords = as.data.frame(colData(se)[,c("x", "y")]))
  u$nUMI <- colSums(u$counts)
  expect_s4_class(result, "SpatialRNA")
  expect_equal(result@coords, u$coords)
  expect_equal(Matrix(result@counts)
               , Matrix(u$counts))
  expect_equal(result@nUMI, u$nUMI)
})
