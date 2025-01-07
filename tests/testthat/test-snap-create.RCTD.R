test_that("create.RCTD simple test", {
  # Arrange
  set.seed(20240815)
  rctd <- simulateSpatialRNASeq(
    n_celltypes = 3,
    samples_per_type = 60,
    reference_samples = 30,
    nGenes = 500,
    seed = 101
  )
  puck <- rctd$s_regions[[1]]
  reference <- rctd$reference

  # Act/Assert
  expect_snapshot(create.RCTD(puck, reference, max_cores = 1))
})
