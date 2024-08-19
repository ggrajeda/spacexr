library(stringr)
library(splatter)
library(scater)

# Encode utf8 as ACGT
char2atcg_1 <- \(s) {
  x <- utf8ToInt(s)
  paste0(c("A", "C", "G", "T")[sapply(0:3,
                 function(u) bitwAnd(bitwShiftR(x, u*2), 3))+1], collapse = "")
  }
char2atcg <- Vectorize(char2atcg_1)

# create a SingleCellExperiment object for testing spacexr functions
# TODO helpers to create lists for constructing spacexr functions
# TODO private seed for splatSimulateGroups so that synthetic datasets can be recreated
# TODO add Batch (for platforms)
synthetic_se <- function(n_celltypes = 3,
                         cells_per_type = 30,
                         de.prob = seq(from=0.3,to=0.4,length.out=n_celltypes),
                         nGenes = 500) {
  total_cells <- cells_per_type * n_celltypes
  # a scSummarizedExperiment
  se <- splatSimulateGroups(
    newSplatParams(batchCells = total_cells, nGenes = nGenes),
    de.prob = de.prob,
    group.prob = rep(1 / n_celltypes, n_celltypes),
    verbose = FALSE
  )

  # Create barcode as CellType_PlatfformID_UMI
  # where CellType is from Group and Platform is from Batch
  colData(se)[, "Group"] <- as.factor(str_replace(colData(se)$Group, "Group", "ct"))
  colData(se)[, "Batch"] <- as.factor(str_replace(colData(se)$Batch, "Batch", "plat"))
  colnames(se) <- paste(colData(se)$Group,
    colData(se)$Batch, char2atcg(colData(se)$Cell), sep = "_")

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
