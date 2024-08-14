library(splatter)
library(scuttle)

synthetic_se <- function(n_celltypes = 2, cells_per_type = 20, nGenes = 100) {

  cartesian2polar <- function(cart) with(cart,data.frame(rho = sqrt(x^2 + y^2),
                                                         theta = atan2(y, x)))

  polar2cartesian <- function(polar) with(polar, data.frame(x = rho * cos(theta),
                                                            y = rho * sin(theta)))

  total_cells <- cells_per_type * n_celltypes
  se <- splatSimulateGroups(
    newSplatParams(batchCells = total_cells, nGenes = nGenes),
    group.prob = rep(1 / n_celltypes, n_celltypes),
    de.prob = seq(from = 0.1, to = 0.4, length.out = n_celltypes),
    verbose = FALSE
  )

  # se <- logNormCounts(se)
  # se <- runPCA(se)
  # plotPCA(se, colour_by = "Group")

  theta <- 2*pi * 0:(n_celltypes - 1) /n_celltypes
  centroids <- polar2cartesian(data.frame(rho = 1, theta = theta))
  runif(total_cells, 0, 2  * pi)

  cd <- colData(se)
  location <- polar2cartesian(data.frame(rho = sqrt(runif(total_cells, 0, 1)) / 2,
                                         theta = runif(total_cells, 0, 2  * pi)))
  offset <- centroids[as.integer(colData(se)$Group),]
  location <- location + offset
  colData(se) <- cbind(cd, location)

  # with(colData(se), plot(x, y, col = as.integer(Group) + 1))
  return(se)
}

