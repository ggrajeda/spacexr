test_that("create.RCTD simple test", {
    # Arrange

    # create reference
    set.seed(20240815)
    refSE <- synthetic_se(n_celltypes = 3, cells_per_type = 30, nGenes = 500)
    u <- list(refSE)
    u$counts <- assay(refSE, "counts")
    u$nUMI <- colSums(u$counts)
    u$cell_types <- colData(refSE)$Group
    names(u$cell_types) <- colnames(refSE)
    reference <- Reference(counts = u$counts, cell_types = u$cell_types)

    # create puck
    se <- synthetic_se(n_celltypes = 3, cells_per_type = 30, nGenes = 500)

    v <- list(counts = assay(se, "counts"),
              coords = as.data.frame(colData(se)[,c("x", "y")]))
    v$nUMI <- colSums(v$counts)
    puck <- SpatialRNA(v$coords, v$counts)

    # Act/Assert
   expect_snapshot(create.RCTD(puck, reference, max_cores = 1))
 })
