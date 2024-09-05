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
    # the groups are evenly spaced along the circumference of a circle
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
#' @return (reference, list(s_regions))
#'
sce_to_rctd <- function(sce, prop.ref = 0.5, replicates = 1) {
  # create Reference object
  split <- floor(ncol(sce) * prop.ref)
  refSE <- sce[, 1:split]
  cell_types <- colData(refSE)$Group
  names(cell_types) <- colnames(refSE)
  reference <- Reference(counts =assay(refSE, "counts"),
                         cell_types = cell_types)

  # create s_regions
  # The boundaries for for the column partition
  u <- round(seq(from = split + 1, to = ncol(sce)+ 1, length.out = replicates + 1))
  # each row of of u is a replicate and the two columns are the corrsponding
  # limits of the columns to be returned from sce
  u <- matrix(c(u[1:(replicates)], u[2:(replicates + 1)] - 1),
              nrow = replicates, byrow = FALSE)
  # check to be sure that there there is at least one column in each replicate
  if ( min(u[,2] - u[,1]) <1) {
    stop("function sce_to_rctd: Not enough sce columns for the number of replicates")
  }

  s_regions <- apply(u, 1, \(x) {
    s <- sce[,x[1]:x[2]]
    v <- list(counts = assay(s, "counts"),
              coords = as.data.frame(colData(s)[,c("x", "y")]))
    v$nUMI <- colSums(v$counts)
    s_region <- SpatialRNA(v$coords, v$counts)
  })
  names(s_regions) <- paste("rpl", seq_along(s_regions), sep = "")

  list(reference = reference, s_regions = s_regions)
}


#' rctd_result_list
#'
#' Extract a list of significant return values from a run.RCTD call for
#'         regression testing purposes. Shrunk down to keep tests reasonable small
#'         while still having a chance of detecting changes in the compuation.
#'
#'         This is not intended to be used for TDD or functional testing.
#'
#' @param u - an RCTD result
#'
#' @return list. Elements:
#'          rctd_results - a matrix or data.frame from the results slot, specific
#'              contents vary with the computation mode (see code)
#'          cell_type_info$renorm - The first member in the renorm list element
#'              from the list stored at the slot cell_type_info
#'
#' @examples
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

#' near_equal - Nearly equal
#' Compare two datasets containing floating point values for equality
#' while ignoring very small descrepencies in the mantissa.
#'
#' Both base::all.equal ad all.equal check if the mean absolute differece
#' is small. This is unuseful (and misleadign).
#'
#' Matrix-like and data.frame-like objects are supported.
#'
#' @param a - the first object to compare
#' @param b - the second object to compare
#' @param ref_name - default "", text that will be attached to any report of differences found
#' @param epsilon - the maximum distance between any two values for them to be considered "nearly equal"
#'
#' @return - a data.frame. One row for each difference found. Columns are:
#'                  ref_name, row, column, a's value, b's value, if numeric, the difference a-b
#'             If 0 rows x 0 columns, the two objects are equal.
#'
#' @examples
#'    near_equal(result, result_multi, ref_name = "rctd_results")
#'     ref_name row col        a            b              diff
#'     rctd_results   5   6 617.0000 1.033454e+02  513.654611292082
#'     rctd_results   8   9   0.0000 1.000000e+00

near_equal <- \(a, b, ref_name = "", epsilon = .Machine$double.eps ^ 0.5) {
  almost_equal <- \(x, y) {
    if (typeof(x[1]) == "double")
      abs(x - y) <= epsilon
    else
      x == y
  }
  # TODO stop -> error return
  # TODO attributes (row names, column names)
  if (!identical(dim(a), dim(b))) {
    # TODO Better error message
    stop("dataframe dimensions not identical")
  }

  # Compare matrix-like objects
  if (inherits(a, c("Matrix", "matrix"))) {
    if (!inherits(b, c("Matrix", "matrix"))) {
      stop("a is matrix-like and b is not")
    }
    if (typeof(a[1]) == "double")
      r <- almost_equal(a, b)
    else
      r <- a == b
  } else {
    # Compare data.frame-like objects
    r <- mapply(\(u, v) {
      if (typeof(u) != typeof(v)) {
        stop("Incompatible types")
      }
      mapply(almost_equal, u, v)
    }, a, b)
  }
  r <- which(!r, arr.ind = TRUE)
  if (length(r) == 0) {
    r <- data.frame(ref_name = character(),
                    row=character(), col=character(),
                    a=character(), b=character(),
                    diff=character())
  } else {
    r <- do.call(rbind,
          apply(r, 1, function(u) {
            a=a[u[1], u[2]]
            b=b[u[1], u[2]]
            data.frame(ref_name, row=as.character(u[1]),
                       col=as.character(u[2]),
                       a=as.character(a),
                       b=as.character(b),
                       diff=as.character(ifelse(is.numeric(a), a-b, "")))
            }))
    rownames(r) <- NULL
  }
  r
}

rctd_results_equal <- \(a, b)
{
  result <- near_equal(a$rctd_results, b$rctd_results, ref_name = "rctd_results")
  result <- rbind(result,
        near_equal(a$cell_type_info, b$cell_type_info,
                   ref_name = "cell_type_info"))
  result
}

cside_results_equal <- \(a, b)
{
  coalesce_gene_list_dfs <- \(u) do.call(rbind, u@de_results$all_gene_list)

  near_equal(coalesce_gene_list_dfs(a), coalesce_gene_list_dfs(b),
            ref_name = "de_results$all_gene_list")
}


# Scientific notation, only, 8 sig figs
# for appropriate checking of floating point results
print_rctd_results <- \(u) {
  print(u$cell_type_info[[1]], max=99999, digits=5, scipen=-999)
  print(u$rctd_results, max=99999, digits=5, scipen=-999)
}

# TODO Roxygen
expect_rctd_results_equal <- function(a, b) {
  df <- rctd_results_equal(a, b)
  if (nrow(df) == 0) {
    succeed("The objects are equal")
  } else {
  fail_msg <- paste("Differences found:\n",
    paste(capture.output(print(df, row.names = FALSE)), collapse = "\n"))
  fail(fail_msg)
  }
}

# TODO Roxygen
expect_cside_results_equal <- function(a, b) {
  df <- cside_results_equal(a, b)
  if (nrow(df) == 0) {
    succeed("The objects are equal")
  } else {
    fail_msg <- paste("Differences found:\n",
                      paste(capture.output(print(df, row.names = FALSE)), collapse = "\n"))
    fail(fail_msg)
  }
}
