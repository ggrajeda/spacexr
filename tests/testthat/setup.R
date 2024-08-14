library(splatter)
library(scater)

set.seed(20240813)

# create a SingleCellExperiment object for testing spacexr functions

synthetic_se <- \(n_celltypes = 3, cells_per_type = 20, nGenes = 300) {
  total_cells <- cells_per_type * n_celltypes
  # a scSummarizedExperiment
  se <- splatSimulateGroups(
    newSplatParams(batchCells = total_cells, nGenes = nGenes),
    group.prob = rep(1 / n_celltypes, n_celltypes),
    de.prob = seq(from = 0.1, to = 0.4, length.out = n_celltypes),
    verbose = FALSE
  )

  # map the cells (columns) to slide xy-space
  cartesian2polar <- function(cart) with(cart,data.frame(rho = sqrt(x^2 + y^2),
                                                         theta = atan2(y, x)))
  polar2cartesian <- function(polar) with(polar, data.frame(x = rho * cos(theta),
                                                            y = rho * sin(theta)))
  # the groups are evenly spaced along the circumferience of a circle
  theta <- 2*pi * 0:(n_celltypes - 1) /n_celltypes
  centroids <- polar2cartesian(data.frame(rho = 1, theta = theta))
  runif(total_cells, 0, 2  * pi)

  # the cells (columns) are distributed in a smaller disk centered at each group
  cd <- colData(se)
  location <- polar2cartesian(data.frame(rho = sqrt(runif(total_cells, 0, 1)) / 2,
                                         theta = runif(total_cells, 0, 2  * pi)))
  offset <- centroids[as.integer(colData(se)$Group),]
  location <- location + offset
  # the (x,y) coorinates for eacch cell are now part of colData
  colData(se) <- cbind(cd, location)

  return(se)
}
