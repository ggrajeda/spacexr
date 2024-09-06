test_that("run.CSIDE.single simple test",{
  # This is roughly follows the differential-expression vignette

  # Arrange
  # create reference
  set.seed(20240821)
  sce <- synthetic_se(n_celltypes = 20,
                      cells_per_type = 70,
                      nGenes = 500,
                      seed = 886)
  mat <- sce_to_rctd(sce)
  rctd <- create.RCTD(mat$s_regions[[1]], mat$reference, max_cores = 1)
  rctd <- run.RCTD(rctd, doublet_mode = 'doublet')

  explanatory.variable <- runif(length(rctd@spatialRNA@nUMI))
  names(explanatory.variable) <- names(rctd@spatialRNA@nUMI) # currently random explanatory variable
  print(head(explanatory.variable))

  # Differentially upregulate one gene
  # take one gene from the 80th centile.
  change_gene <-  names((\(u)
      u[head(which(u >quantile(u, 0.8)), 1)])(sort(rowSums(rctd@spatialRNA@counts))))
  print(paste0("gene to upreguate:", change_gene))
  high_barc <- explanatory.variable > 0.5
  low_barc <- !high_barc
  rctd@spatialRNA@counts[change_gene, high_barc] <- rctd@spatialRNA@counts[change_gene, high_barc] * 3

  rctd_multi <- rctd
  rctd@config$max_cores <- 1
  rctd_multi@config$max_cores <- 2

  # plot_puck_continuous(rctd@spatialRNA, names(explanatory.variable), explanatory.variable, ylimit = c(0,1), title ='plot of explanatory variable')

  # Act
  r <- run.CSIDE.single(rctd,
                        explanatory.variable,
                        gene_threshold = .01,
                        cell_type_threshold = 3, fdr = 0.25)
  r_multi <- run.CSIDE.single(rctd_multi,
                              explanatory.variable,
                              gene_threshold = .01,
                              cell_type_threshold = 3, fdr = 0.25)

  # Assert
  expect_snapshot({
    r@de_results$all_gene_list
    r_multi@de_results$all_gene_list
  })

  expect_cside_results_equal(r, r_multi)
})
