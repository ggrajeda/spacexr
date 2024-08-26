library(stringr, quietly = TRUE)
library(splatter, quietly = TRUE)
library(scater, quietly = TRUE)

# convert a UTF-8 string to base 4 (bytewise bigendian),
#   where the digits are A,C,G,T
# Puropose: To create pseduo bar codes
# example: char2atcg("A") => "CAAC"
# "A" asici 65 (base 10) =>  01 10 00 10 => 2,0,2,1 => GAGC
char2atcg <- Vectorize(\(s) {
  x <- utf8ToInt(s)
  paste0(c("A", "C", "G", "T")[t(sapply(0:3,
        function(u) bitwAnd(bitwShiftR(x, u*2), 3))+1)], collapse = "")})

# create a SingleCellExperiment object for testing spacexr functions
synthetic_se <- function(n_celltypes = 3,
                         cells_per_type = 30,
                         de.prob = seq(from=0.3,to=0.4,length.out=n_celltypes),
                         nGenes = 500, disk_radius = 0.5, seed = 1951) {
  withr::with_seed(seed, {
    total_cells <- cells_per_type * n_celltypes
    # a SingleCellExperiement
    se <- splatSimulateGroups(
      newSplatParams(batchCells = total_cells, nGenes = nGenes),
      de.prob = de.prob,
      group.prob = rep(1 / n_celltypes, n_celltypes),
      verbose = FALSE
    )

    # Create barcode as CellType_UMI
    # where CellType is from Group
    colData(se)[, "Group"] <- as.factor(str_replace(colData(se)$Group, "Group", "ct"))
    colnames(se) <- paste(colData(se)$Group, char2atcg(colData(se)$Cell), sep = "_")

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
    location <- polar2cartesian(data.frame(rho = sqrt(runif(total_cells, 0, 1)) * disk_radius,
                                           theta = runif(total_cells, 0, 2  * pi)))
    offset <- centroids[as.integer(colData(se)$Group),]
    location <- location + offset
    # the (x,y) coordinates for eacch cell are now part of colData
    colData(se) <- cbind(cd, location)
  })
  return(se)
}

sce_to_rctd <- function(se) {
  # create Reference object
  split <- floor(ncol(se) / 2)
  refSE <- se[, 1:split]
  se <- se[, (split + 1):ncol(se)]

  cell_types <- colData(refSE)$Group
  names(cell_types) <- colnames(refSE)
  reference <- Reference(counts =assay(refSE, "counts"),
                         cell_types = cell_types)

  # create puck
  v <- list(counts = assay(se, "counts"),
            coords = as.data.frame(colData(se)[,c("x", "y")]))
  v$nUMI <- colSums(v$counts)
  puck <- SpatialRNA(v$coords, v$counts)
  list(reference = reference, puck = puck)
}
