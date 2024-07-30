### RCTD Test Suite
### These tests are adapted from the RCTD vignettes. They are brittle and meant
### to be temporary, but they should be used to verify no-op changes.


# Creates Reference object from counts.csv, cell_types.csv, and nUMI.csv in
# directory inst/extdata/Reference/<ref_name>
get_reference <- function(ref_name) {
  ref_dir <- system.file("extdata", paste0("Reference/", ref_name),
    package = "spacexr"
  )
  counts <- as.data.frame(readr::read_csv(file.path(ref_dir, "counts.csv")))
  rownames(counts) <- counts[, 1]
  counts[, 1] <- NULL
  cell_types <- read.csv(file.path(ref_dir, "cell_types.csv"))
  cell_types <- setNames(cell_types[[2]], cell_types[[1]])
  cell_types <- as.factor(cell_types)
  nUMI <- read.csv(file.path(ref_dir, "nUMI.csv"))
  nUMI <- setNames(nUMI[[2]], nUMI[[1]])

  Reference(counts, cell_types, nUMI)
}

# Creates SpatialRNA object from counts.csv and coords.csv in directory
# inst/extdata/SpatialRNA/<vignette_name>
get_puck <- function(vignette_name) {
  data_dir <- system.file("extdata", paste0("SpatialRNA/", vignette_name),
    package = "spacexr"
  )
  counts <- as.data.frame(readr::read_csv(file.path(data_dir, "counts.csv")))
  rownames(counts) <- counts[, 1]
  counts[, 1] <- NULL
  coords <- read.csv(file.path(data_dir, "coords.csv"))
  rownames(coords) <- coords[, 1]
  coords[, 1] <- NULL
  nUMI <- colSums(counts)

  SpatialRNA(coords, counts, nUMI)
}

# Loads expected RCTD results from file inst/extdata/tests/<rds_file>
get_expected_results <- function(rds_file) {
  test_data_dir <- system.file("extdata", "tests", package = "spacexr")
  readRDS(file.path(test_data_dir, rds_file))
}


# Runs spatial transcriptomics RCTD vignette
test_that("spatial transcriptomics vignette succeeds", {
  ref_dir <- system.file("extdata", "Reference/Vignette", package = "spacexr")
  counts <- read.csv(file.path(ref_dir, "dge.csv"))
  rownames(counts) <- counts[, 1]
  counts[, 1] <- NULL
  meta_data <- read.csv(file.path(ref_dir, "meta_data.csv"))
  cell_types <- meta_data$cluster
  names(cell_types) <- meta_data$barcode
  cell_types <- as.factor(cell_types)
  nUMI <- meta_data$nUMI
  names(nUMI) <- meta_data$barcode

  ### Create Reference object
  reference <- Reference(counts, cell_types, nUMI)
  expect_equal(nrow(reference@counts), 384)
  expect_equal(ncol(reference@counts), 475)

  data_dir <- system.file("extdata", "SpatialRNA/Vignette", package = "spacexr")
  counts <- read.csv(file.path(data_dir, "MappedDGEForR.csv"))
  coords <- read.csv(file.path(data_dir, "BeadLocationsForR.csv"))
  rownames(counts) <- counts[, 1]
  counts[, 1] <- NULL
  rownames(coords) <- coords$barcodes
  coords$barcodes <- NULL
  nUMI <- colSums(counts)

  ### Create SpatialRNA object
  puck <- SpatialRNA(coords, counts, nUMI)
  expect_equal(nrow(puck@counts), 378)
  expect_equal(ncol(puck@counts), 100)

  ### Run RCTD
  myRCTD <- create.RCTD(puck, reference, max_cores = 1)
  myRCTD <- run.RCTD(myRCTD, doublet_mode = "doublet")
  expect_equal(
    myRCTD@results,
    get_expected_results("spatial_transcriptomics_rctd_results.rds")
  )
})


# Runs MERFISH RCTD vignette
test_that("merfish vignette succeeds", {
  reference <- get_reference("Merfish_Ref")
  puck <- get_puck("MerfishVignette")

  # TODO: Use multiple cores
  myRCTD <- create.RCTD(puck, reference, max_cores = 1)
  myRCTD <- run.RCTD(myRCTD, doublet_mode = "doublet")
  expect_equal(
    myRCTD@results,
    get_expected_results("merfish_rctd_results.rds")
  )
})


# Runs full mode Visium RCTD vignette
test_that("full mode visium vignette succeeds", {
  reference <- get_reference("Visium_Ref")
  puck <- get_puck("VisiumVignette")

  # TODO: Use multiple cores
  myRCTD <- create.RCTD(puck, reference, max_cores = 1)
  myRCTD <- run.RCTD(myRCTD, doublet_mode = "full")
  expect_equal(
    myRCTD@results,
    get_expected_results("visium_full_mode_rctd_results.rds")
  )
})


# Runs multi mode Visium RCTD vignette
test_that("multi mode visium vignette succeeds", {
  reference <- get_reference("Visium_Ref")
  puck <- get_puck("VisiumVignette")

  # TODO: Use multiple cores
  myRCTD <- create.RCTD(puck, reference, max_cores = 1)
  myRCTD <- run.RCTD(myRCTD, doublet_mode = "multi")
  expect_equal(
    myRCTD@results,
    get_expected_results("visium_multi_mode_rctd_results.rds")
  )
})
