test_that("create.RCTD simple test", {
    # Arrange
    set.seed(20240815)
    sce <- synthetic_se(n_celltypes = 3,
                          cells_per_type = 60,
                          nGenes = 500,
                          seed = 101)
    rctd <- sce_to_rctd(sce)
    puck <- rctd$s_regions[[1]]
    reference <- rctd$reference

    # Act/Assert
   expect_snapshot(create.RCTD(puck, reference, max_cores = 1))
 })
