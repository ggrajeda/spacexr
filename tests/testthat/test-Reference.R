test_that("Reference simple test", {
  # Arrange
  set.seed(20240813)
  se <- synthetic_se(seed = 234)
  u <- list()
  u$counts <- assay(se, "counts")
  u$nUMI <- colSums(u$counts)
  u$cell_types <- colData(se)$cell_type
  names(u$cell_types) <- colnames(se)

  # Act
  result <- Reference(counts = u$counts, cell_types = u$cell_types)

  # Assert
  expect_s4_class(result, "Reference")
  expect_equal(Matrix(result@counts) , Matrix(u$counts))
  expect_equal(result@nUMI, u$nUMI)

})
