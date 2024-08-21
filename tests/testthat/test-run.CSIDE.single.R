test_that("run.CSIDE.single simple test",{
  # TODO Streamline and shrink!
  # This is only a proof of concept that mirrors the differential-expression vignette

  # Arrange
  # create reference
  set.seed(20240821)
  mat <- se2mat(synthetic_se(n_celltypes = 3,
                             cells_per_type = 60,
                             nGenes = 500,
                             seed = 886))
  rctd <- create.RCTD(mat$puck, mat$reference, max_cores = 1)
  rctd <- run.RCTD(rctd, doublet_mode = 'doublet')

  explanatory.variable <- runif(length(rctd@spatialRNA@nUMI))
  names(explanatory.variable) <- names(rctd@spatialRNA@nUMI) # currently random explanatory variable
  print(head(explanatory.variable))

  #Differentially upregulate one gene
  # take one gene from the 80th centile.
  change_gene <-  names((\(u)
      u[head(which(u >quantile(u, 0.8)), 1)])(sort(rowSums(rctd@originalSpatialRNA@counts))))
  print(paste0("gene to upreguate:", change_gene))
  high_barc <- names(explanatory.variable[explanatory.variable > 0.5])
  low_barc <- names(explanatory.variable[explanatory.variable < 0.5])
  rctd@originalSpatialRNA@counts[change_gene, high_barc] <- rctd@spatialRNA@counts[change_gene, high_barc] * 3

  # plot_puck_continuous(rctd@spatialRNA, names(explanatory.variable), explanatory.variable, ylimit = c(0,1), title ='plot of explanatory variable')

  # Act/Assert
  rctd@config$max_cores <- 1
  expect_snapshot({
    r <- run.CSIDE.single(rctd,
                              explanatory.variable,
                              gene_threshold = .01,
                              cell_type_threshold = 3, fdr = 0.25)
    list(config = r@config,
         results = r@results$results_df,
         weights = r@results$weights,
         weights_doublet = r@results$weights_doublet,
         singlet_scores = r@results$singlet_scores)
  })

  # TODO Extract additional information?
  # cell_type <- 'ct2'
  # results_de <- rctd@de_results$sig_gene_list[[cell_type]]
  # print(results_de)
  # sig_gene <- change_gene
  # print(paste("following results hold for", sig_gene))
  # print("check for covergence of each cell type")
  # print(rctd@de_results$gene_fits$con_mat[sig_gene, ])
  # print('estimated DE')
  # print(rctd@de_results$gene_fits$mean_val[sig_gene, ])
  # print('standard errors for non-intercept terms')
  # print(rctd@de_results$gene_fits$s_mat[sig_gene, ])
  # plot_gene_two_regions(rctd, sig_gene, cell_type, min_UMI = 10)
})
