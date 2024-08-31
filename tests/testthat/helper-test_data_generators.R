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

#

#' Create a synthetic dataset of RNA-seq like counts
#'
#' Simulates asngle-cell RNA-seq experiment and attaches 2-d coordinates to each observation.
#' The data is not expected to be biologically relevant, but it is expected to have statistical properties are compatible with RNA-seq datasets.
#'
#' In its current implementation, each cell type is associated with a 2-d locus that lies on the unit circle.
#' The individual cells (observations) are randomly are uniformly distributed within a disk of a given radius which may or may not overlap the other disks.
#'
#' @param n_celltypes - The number of cell types. (Default 3)
#' @param cells_per_type - The number of cells for each type. (Default 30)
#' @param de.prob - The probability that a given gene will be differentially expressed.
#' Either a single percentage, or a vector of percentages, one foe each of the cell types. (Default: linearly increasing probabilities from 0.3 to 0.4)
#' @param nGenes - The number of genes.
#' @param disk_radius - The radius of the disk that contains the individual observations for the cell type.
#' @param seed - A random seed. This assures that the same simulated SCE results will be returned each time that this function is called.
#' It does not use or alter the random seed value of the calling function.
#'
#' @return SingleCellExperiemnt with (n_celltypes x cells_per_type) columns and nGenes rows.
#'
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

#' Create a Reference and associated SpatialRNA object from a single cell experiment
#'
#' @param sce - A  SingleCellExperiment, specifically one created by the synthetic_se function.
#' @param prop.ref A proportion of the samples be used to create a Reference object. (Default 0.5)
#' The remaining columns will be used as the experimental observations.
#' @param replicates The number of experimental replicates
#'
#' @return (reference, list(pucks))
#'
sce_to_rctd <- function(sce, prop.ref = 0.5, replicates = 1) {
  # create Reference object
  split <- floor(ncol(sce) * prop.ref)
  refSE <- sce[, 1:split]
  cell_types <- colData(refSE)$Group
  names(cell_types) <- colnames(refSE)
  reference <- Reference(counts =assay(refSE, "counts"),
                         cell_types = cell_types)

  # create pucks
  # The boundries for for the column partition
  u <- round(seq(from = split + 1, to = ncol(sce)+ 1, length.out = replicates + 1))
  # each row of of u is a replicate and the two columns are the corrsponding
  # limits of the columns to be returned from sce
  u <- matrix(c(u[1:(replicates)], u[2:(replicates + 1)] - 1),
              nrow = replicates, byrow = FALSE)
  # check to be sure that there there is at least one column in each replicate
  if ( min(u[,2] - u[,1]) <1) {
    stop("function sce_to_rctd: Not enough sce columns for the number of replicates")
  }

  pucks <- apply(u, 1, \(x) {
    s <- sce[,x[1]:x[2]]
    v <- list(counts = assay(s, "counts"),
              coords = as.data.frame(colData(s)[,c("x", "y")]))
    v$nUMI <- colSums(v$counts)
    puck <- SpatialRNA(v$coords, v$counts)
  })
  names(pucks) <- paste("rpl", seq_along(pucks), sep = "")

  list(reference = reference, pucks = pucks)
}

# TODO Roxygen needed
# list of externally relevant results
# TODO TO helpers
rctd_result_list <- \(u) {
  v <- u@results
  if (u@config$RCTDmode == "multi") {
    for (i in seq_along(v)) {
      v[[i]]$cell_id <- names(u@spatialRNA@nUMI)[i]
    }
    rctd_results <- as.data.frame(do.call(rbind, lapply(v, tibble::as_tibble)))
  } else if (u@config$RCTDmode == "full") {
      rctd_results <- v$weights
  } else if (u@config$RCTDmode == "doublet") {
      rctd_results <- v$results_df
  } else {
      stop(paste("Unknown RCTD mode", u@config$RCTDmode))
  }
  list(cell_type_info = u@cell_type_info$renorm[[1]],
       rctd_results = rctd_results)
}

#' Title
#'
#' @param a
#' @param b
#' @param epsilon
#'
#' @return logical. TRUE if the data.frames have near equal values
#' @export
#'
#' @examples
near_equal_df <- \(a, b, epsilon = .Machine$double.eps ^ 0.5) {
  if (!identical(dim(a), dim(b))) {
    # TODO Better error message
    stop("dataframe dimensions not identical")
  }

  all(mapply(\(u, v) {
    # TO DO need location for reporting
    if (typeof(u) != typeof(v)) {
      return("Incompatible types")
    }
    if (typeof(u) == "double") {
      return(all(mapply((\(x, y) abs(x - y) <= epsilon), u, v)))
    } else {
      return(all(u == v))
    }
  }, a, b))

}

rctd_results_equal <- \(a, b)
{
  near_equal_df(a$rctd_results, b$rctd_results) &&
    near_equal_df(a$cell_type_info, b$cell_type_info)
}

# Scientific notation, only, 8 sig figs
# for appropriate checking of floating point results
print_rctd_results <- \(u) {
  print(u$cell_type_info[[1]], max=99999, digits=5, scipen=-999)
  print(u$rctd_results, max=99999, digits=5, scipen=-999)
}


