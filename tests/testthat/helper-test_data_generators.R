suppressMessages(suppressWarnings({
  library(stringr, quietly = TRUE)
  library(dplyr, quietly = TRUE)
  library(splatter, quietly = TRUE)
}))


#' create_sample_mixtures - Combine single-cell samples to simulate a sample of mixed cell types
#'
#' @param se- summarized experiment
#' @param mixtures A named list of named numeric vectors. Each vector is indicates to proportion of cell types that comprise that mixture.
#'    Example:list(mx1=c(ct1=0.8, ct2=0.2)) Indicates a mixture comprised of 80% ct1 and 20% ct2
#'    Mixtures are created by randomly selecting samples with the specified cell types, mixing them gene-wise in the proportion given
#'    and then replacing one of the selected samples with the mixture, chaanging the cell_type to the mixture name and removing the
#'    samples used in the creation of the mixture.
#' @param n_samples - vector of number of each mixture type to make
#'
#' @return The summarized experiment with mixtures replacing certain samples.
#'
create_sample_mixtures <- \(se, mixtures, n_samples) {
  for (mixture_idx in seq_along(mixtures)) {
    mixture <- mixtures[[mixture_idx]]
    n <- n_samples[mixture_idx]
    mixture_name <-  names(mixtures)[mixture_idx]
    # select the samples for combination
    sample_idx <- mapply(\(prop, pcell_type) {
      sample(which(colData(se)$cell_type == pcell_type), n)
    }, mixture, names(mixture), SIMPLIFY = FALSE) # Simplify false to force 1-row results
    # Convert to matrix
    # sample_idx is now a matrix of column ID's for each of the mixtures for this mixture type
    # columns=se column ID
    # row=computational replicate
    sample_idx <- matrix(unlist(sample_idx), byrow = FALSE, ncol = length(sample_idx))
    for (i in seq(nrow(sample_idx))) {
      u <- sample_idx[i, ]
      mx <- apply(assay(se, "counts")[, u], 1, \(u) as.integer(round(sum(u * mixture), 0)))
      newloc <- u[1]
      assay(se, "counts")[,newloc] <- mx
      levels(colData(se)$cell_type) <- c(levels(colData(se)$cell_type), mixture_name)
      colData(se)$cell_type[newloc] <- mixture_name
    }
    # the mixture has been stored at se columne given in the first column sample_idx
    # remove the other columns used to build the mixtures to avoid de-randomization by reuse
    idx <- as.vector(sample_idx[, -1])
    se <- se[, -idx]
  }
  return(se)
}

#' simulateSpatialRNASeq -Create a synthetic dataset of RNA-seq like counts
#'
#' Simulates a single-cell RNA-seq experiment and attaches 2-d coordinates to each observation.
#' The data is not expected to be biologically relevant, but it is expected to have statistical properties are compatible with RNA-seq datasets.
#'
#'
#' In its current implementation, each cell type is associated with a 2-d locus that lies on the unit circle.
#' The individual samples (observations) are randomly are uniformly distributed within a disk of a given radius which may or may not overlap the other disks.
#'
#' @param n_celltypes - The number of cell types. (Default 3)
#' @param samples_per_type - The number of samples for each type. (Default 30)
#' @param n_batches - The number of batches to create (does not change the total number of samples)
#' @param de.prob - The probability that a given gene will be differentially expressed.
#' Either a single percentage, or a vector of percentages, one foe each of the cell types. (Default: linearly increasing probabilities from 0.3 to 0.4)
#' @param nGenes - The number of genes. (Default 500)
#' @param reference_samples A number of the samples be used to create a Reference object. If zero, no Reference object will be created. (Default 20)
#' The remaining columns will be used as the experimental observations.
#' @param replicates The number of experimental replicates (Default 1)
#' @mixtures - a list of mixture types to create See function create_sample_mixtures for structure
#' @puck_pattern A function that assigned individual observations to geographic locations according to a policy defined in that function.
#'    The default function is config_bars_for_cell_types, which creates horizontal bands of observations grouped by cell type and
#'    arranged in as grids.
#' @param seed - A random seed. This assures that the same simulated SCE results will be returned each time that this function is called.
#' It does not use or alter the random seed value of the calling function.
#'
#' @return list(reference, s_regions=list(s_regions), sce=list(sce)),
#' where reference is an spacexr Reference object,
#'       s_regions is a list of SpatialRNA objects, one for each replicate,
#'       sce is a list of SummarizedExperiment objects, each element corresponding to the parallel SpatialRNA object
#'
simulateSpatialRNASeq <- function(n_celltypes = 3,
                         samples_per_type = 30,
                         n_batches = 1,
                         de.prob = seq(from=0.3,to=0.4,length.out=n_celltypes),
                         nGenes = 500,
                         reference_samples = 15,
                         replicates = 1,
                         puck_pattern = config_bars_for_cell_types,
                         seed = 1951) {
  withr::with_seed(seed, {
    # Create a SingleCellExperiment
    total_samples <- (samples_per_type + reference_samples) * n_celltypes
    # A vector for the number of samples in each batch
    batchCells <- diff(round(seq(from=1, to=total_samples + 1, length.out = n_batches + 1)))
    # To create a Reference object, add an additional batch of the appropriate size
    if (reference_samples > 0) {
      batchCells <- c(reference_samples * n_celltypes, batchCells)

    }
    sce <- splatSimulateGroups(
      newSplatParams(batchCells = batchCells,
                      nGenes = nGenes),
                      de.prob = de.prob,
                      group.prob = rep(1 / n_celltypes, n_celltypes),
                      verbose = FALSE
    )
    colnames(colData(sce))[colnames(colData(sce)) == "Group"] <- "cell_type"
    levels(colData(sce)$cell_type) <- str_replace(levels(colData(sce)$cell_type), "Group", "ct")
  })

# TODO extra observations will be needed in order to create proportional samples
# TODO reconsider default "ramp" for default de.prob
# TODO need to redistribute batches to groups
# TODO puck pattern parameters pass via simulateSpatialRNASeq

  # create Reference object
  if (reference_samples == 0) {
    # If no Reference object is to be built
    reference <- NULL
  } else {
    # We will construct the Reference object from Batch1
    b <- colData(sce)$Batch == "Batch1"
    refSE <- sce[, b]
    cell_types <- colData(refSE)$cell_type
    names(cell_types) <- colnames(refSE)
    reference <- Reference(counts =assay(refSE, "counts"),
                           cell_types = cell_types)
    sce <- sce[, !b]
  }


  # Assign replicate numbers (1..n) to each column, distribute the
  # cell types evenly between the groups
  # This is policy is for test data and not a simulation of real replicates
  z <- split(seq(ncol(sce)), colData(sce)$cell_type)
  replicate <- unlist(lapply(seq_along(z), \(i) rep(1:replicates, length.out = length(z[[i]]))))
  colData(sce) <- cbind(colData(sce)[unlist(z), ], data.frame(replicate))

  # create s_regions - each s_region is a replicate and is returned as
  # both a Summarized Experiment and a SpatialRNA object that is derived
  # from the summarized experiment.
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

    v <- list(counts = assay(s, "counts"),
              coords = as.data.frame(colData(s)[,c("x", "y")]))
    v$nUMI <- colSums(v$counts)
    puck <- SpatialRNA(v$coords, v$counts)
    list(puck, s)
  })
  list(reference = reference, s_regions = lapply(s_regions, `[[`, 1),
       sce = lapply(s_regions, `[[`, 2))
}

# Create simulated spatial data

# The configuration goes like this:
# for each region,
# name = list(location, size, mixture)

#' config_bars_for_cell_types - Create rectangular spatial configuration
#'
#' @param cell_type_table - A named vector giving the number of observations for each cell type
#' @param region_width - The width of each region
#' @param margin - The (approximate) number of empty rows between regions
#'
#' @return A named list of rectangles, each named with a cell type.
#'          Each list item consists of three named vectors:
#'          location$x, location$y, the (x,y) coordinates (in pixels) of the lower left hand vertex of the rectangle
#'          size$x, size$y, the width and height of the rectangle.
#'          mixture, a vector of proportions, each vector element named by a cell type, and each elemnt value indicating the proportion of the
#'          observation that was generated from the named cell type. The total of the porporations should sum to 1.
#'
#' @examples
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


#' regions_to_dots - Create a table of pixels from a named list of regions
#'
#' Take a list of rectangles with dimensions in "pixels" and return a list of
#' data.frames, one for each rectangle, with the (x,y) location of each pixel
#' with measured in microns, and with a pseudo-barcode that is actually en encoding
#' of the pixel's position "x,y", rpresented as an ASCII string. and then translated
#' to ACGT "digits".
#'
#'
#' @param config - A list of rectangles in the form produced by config_bars_for_cell_types
#'
#' @return list of data.frames
#'
#' @examples
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

p2m <- \(u) {
  u * step_size
}
m2p <-  \(u) {
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
