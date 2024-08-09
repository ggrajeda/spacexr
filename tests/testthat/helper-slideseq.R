# tests/testthat/helper-spatial_rna.R
setup_slidseq_data <- \(nCells = 5, nGenes = 7) {
  # From vignette data create small input for the SpacialRNA constructor
  # Takes the highest count rows (genes) and the highest count columns (cells)
  # TODO refactor
  # Only getting higest density for now

  # CLoned from vignette
  datadir <- system.file("extdata",'SpatialRNA/Vignette',package = 'spacexr')
  counts <- read.csv(file.path(datadir,"MappedDGEForR.csv")) # load in counts matrix
  coords <- read.csv(file.path(datadir,"BeadLocationsForR.csv"))
  rownames(counts) <- counts[,1]; counts[,1] <- NULL # Move first column to rownames
  rownames(coords) <- coords$barcodes; coords$barcodes <- NULL # Move barcodes to rownames

  colnames(coords) <- c("x", "y")

  counts <- as.matrix(counts[head(order(rowSums(counts), decreasing = TRUE), nGenes),
              head(order(colSums(counts), decreasing = TRUE), nCells)])
  coords <- coords[colnames(counts),]
  nUMI <- colSums(counts)

  list(counts=counts, coords=coords, nUMI=nUMI)
}
