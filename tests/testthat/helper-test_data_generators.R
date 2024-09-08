library(stringr, quietly = TRUE)
library(splatter, quietly = TRUE)
library(scater, quietly = TRUE)

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
#' @param seed - A random seed. This assures that the same simulated SCE results will be returned each time that this function is called.
#' It does not use or alter the random seed value of the calling function.
#'
#' @return SingleCellExperiemnt with (n_celltypes x cells_per_type) columns and nGenes rows.
#'
synthetic_se <- function(n_celltypes = 3,
                         cells_per_type = 30,
                         de.prob = seq(from=0.3,to=0.4,length.out=n_celltypes),
                         nGenes = 500, seed = 1951) {
  withr::with_seed(seed, {
    total_cells <- cells_per_type * n_celltypes
    # a SingleCellExperiement
    se <- splatSimulateGroups(
      newSplatParams(batchCells = total_cells, nGenes = nGenes),
      de.prob = de.prob,
      group.prob = rep(1 / n_celltypes, n_celltypes),
      verbose = FALSE
    )
    colnames(colData(se))[colnames(colData(se)) == "Group"] <- "cell_type"
    colData(se)[, "cell_type"] <- as.factor(str_replace(colData(se)$cell_type, "cell_type", "ct"))
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
#' @return list(reference, list(s_regions), list(sce)) # TODO describe resutls
#' @return list(reference, list(s_regions), list(sce), puck_pattern) # TODO describe resutls
#'
sce_to_rctd <- function(sce, prop.ref = 0.5, replicates = 1,
                        puck_pattern = config_bars_for_cell_types) {
  # create Reference object
  if (prop.ref == 0) {
    # If no Reference object is to be built
    reference <- NULL
    split <- 0
  } else {
    split <- floor(ncol(sce) * prop.ref)
    refSE <- sce[, 1:split]
    cell_types <- colData(refSE)$cell_type
    names(cell_types) <- colnames(refSE)
    reference <- Reference(counts =assay(refSE, "counts"),
                           cell_types = cell_types)
    sce <- sce[, (split+1):ncol(sce)]
  }


  # Assign replicate numbers (1..n) to each column, distirubiton the
  # cell types evenly between the groups
  # This is policy is for test data and not a simulation of real replicates
  z <- split(seq(ncol(sce)), colData(sce)$cell_type)
  replicate <- unlist(sapply(seq_along(z), \(i) rep(1:replicates, length.out = length(z[[i]]))))
  colData(sce) <- cbind(colData(sce)[unlist(z), ], data.frame(replicate))

  # create s_regions

  s_regions <- lapply(split(1:ncol(sce), colData(sce)$replicate), \(sindex) {
    s <- sce[, sindex]
    # assign bar codes (proxy for dot location) to colnames
    v <- split(seq(ncol(s)), colData(s)$cell_type)
    cell_type_count <- sapply(v, length)
    region_spec <- puck_pattern(cell_type_count)
    r2d <-regions_to_dots(region_spec)
    for (i in seq_along(v)) {
      colnames(s)[v[[i]]] <- sample(rownames(r2d[[i]]), length(v[[i]]))
    }

    r2c_reduced <- Reduce(\(x,y) rbind(x, y), r2d)
    colData(s) <- cbind(colData(s), r2c_reduced[colnames(s),])

    v <- list(counts = assay(s, "counts"),
              coords = as.data.frame(colData(s)[,c("x", "y")]))
    v$nUMI <- colSums(v$counts)
    s_region <- SpatialRNA(v$coords, v$counts)

    s_regions <- list(s_region) # TODO plug for missing replicate loop
    v <- list(counts = assay(s, "counts"),
              coords = as.data.frame(colData(s)[,c("x", "y")]))
    v$nUMI <- colSums(v$counts)
    puck <- SpatialRNA(v$coords, v$counts)
    list(puck, s)
  })
  list(reference = reference, s_regions = lapply(s_regions, `[[`, 1),
       se = lapply(s_regions, `[[`, 2))
}
# Create simulated spatial data

# The configuration goes like this:
# for each region,
# name = list(location, size, mixture)

config_bars_for_cell_types <- \(cell_type_table, region_width = 10, margin = 2) {
  df <- data.frame(cell_type=names(cell_type_table),
                   pixel_count=as.integer(cell_type_table),
                   stringsAsFactors = FALSE)
  df$size.y <- ceiling(df$pixel_count / region_width)
  df$loc.x <- 1
  df$loc.y <- c(1, cumsum(df$size.y + margin)[-nrow(df)])
  df$size.x <- region_width
  df$mixture <- 1
  names(df$mixture) <- df$cell_tye

  result <- output_list <- lapply(1:nrow(df), function(i) {
    cell <- df$cell_type[i]
    list(
      location = c(x = df$loc.x[i], y = df$loc.y[i]),
      size = c(x = df$size.x[i], y = df$size.y[i]),
      mixture = setNames(c(df$mixture[i]), cell)
    )
  })

  names(result) <- df$cell_type
  result
}


# convert a UTF-8 string to base 4 (bytewise bigendian),
#   where the digits are A,C,G,T
# Puropose: To create pseduo bar codes
# example: char2atcg("A") => "CAAC"
# "A" asici 65 (base 10) =>  01 10 00 10 => 2,0,2,1 => GAGC
char2atcg <- Vectorize(\(s) {
  x <- utf8ToInt(s)
  paste0(c("A", "C", "G", "T")[t(sapply(0:3,
             function(u) bitwAnd(bitwShiftR(x, u*2), 3))+1)], collapse = "")})

# enumerate the x,y positions (dots or "pixels") that are contained in each region.
regions_to_dots <- \(config) {
  results <- lapply(config, \(u) {
    start <- u$location
    end <- u$location + u$size
    v <- expand.grid(x = seq(from = start["x"], to = end["x"]) * step_size["x"],
                     y = seq(from = start["y"], to = end["y"]) * step_size["y"])
    rownames(v) <- char2atcg(apply(v, 1, \(r) paste(r[1],r[2], sep = ",")))
    v
  })
  results
}

# dimensions are reported in microns. For Visium the field size is roughly 6500x3200
# pixels are addressed as a lattice with spacing x=120um and y=70um
# To define a map, each map element is: (name, x, y, w, h, list(ct1=p1, ct2=p2....))
# the x,y, w, h are in pixel space. and get converted to micros on the way out

field_limit <- c(x=6500, y=3200)
step_size <- c(x=120, y=70)

# TODO BUG HERE!
p2m <- \(u) {
  # TODO stops are for degbugging only. remove or refactor
  if (!is.numeric(u)) {
    stop("must be vector")
  }
  u * step_size
}
m2p <-  \(u) {
  if (!is.numeric(u)) {
    stop("must be vector")
  }
  u / step_size
}

region_limits <- \(config) {
  m <- do.call(rbind, lapply(config, \(u) c(p2m(u$location),
                                            p2m(u$size + u$location))))
  list(x=range(m[,c(1,3)]), y=range(m[,c(2,4)]))
}

plot_puck_config <- \(sce_list) {
  lapply(sce_list, \(s) {
    library_size <- colSums(assay(s, "TrueCounts"))
    as_tibble(cbind(colData(s), library_size))
  }) |>
    bind_rows(.id = "replicate") |>
    group_by(replicate) |>
    ggplot(aes(x = x, y = y, size = log(library_size))) +
    theme_light() +
    facet_wrap(~ replicate) +
    geom_point(aes(color = cell_type))
}
