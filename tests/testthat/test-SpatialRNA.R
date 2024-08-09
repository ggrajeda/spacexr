test_that("SpatialRNA simple test", {
  # Arrange
  u <- setup_slidseq_data(4,5)

  # Act
  result <- SpatialRNA(u$coords, u$counts)

  # Assert
  expect_s4_class(result, "SpatialRNA")
  expect_equal(result@coords, u$coords)
  expect_equal(result@counts, Matrix(u$counts))
  expect_equal(result@nUMI, u$nUMI)
})
