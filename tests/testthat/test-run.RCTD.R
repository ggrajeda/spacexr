test_that("run.RCTD simple test", {
    # Arrange
    # create reference
    set.seed(20240815)
    se <- synthetic_se(n_celltypes = 3, cells_per_type = 60, nGenes = 500)
    # create training set refSE and remove from se
    split <- floor(ncol(se) / 2)
    refSE <- se[, 1:split]
    se <- se[, (split + 1):ncol(se)]

    u <- list(refSE)
    u$counts <- assay(refSE, "counts")
    u$nUMI <- colSums(u$counts)
    u$cell_types <- colData(refSE)$Group
    names(u$cell_types) <- colnames(refSE)
    reference <- Reference(counts = u$counts, cell_types = u$cell_types)

    # create puck
    v <- list(counts = assay(se, "counts"),
              coords = as.data.frame(colData(se)[,c("x", "y")]))
    v$nUMI <- colSums(v$counts)
    puck <- SpatialRNA(v$coords, v$counts)
    rctd <- create.RCTD(puck, reference, max_cores = 1)

    # Act/Assert
   expect_snapshot({
      result <- run.RCTD(rctd, doublet_mode = 'doublet')
      list(cell_type_info = result@cell_type_info$renorm,
           de_results = result@de_results,
           results = result@results)
      u <- result@results$results_df
      print(cf <- table(substr(rownames(result@results$results_df),1,3), result@results$results_df$first_type))
   })
 })
