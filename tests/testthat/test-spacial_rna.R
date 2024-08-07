test_that("My first Reference call", {
  ### Load in/preprocess your data, this might vary based on your file type
  refdir <- system.file("extdata",'Reference/Vignette',package = 'spacexr') # directory for the reference
  counts <- read.csv(file.path(refdir,"dge.csv")) # load in counts matrix
  rownames(counts) <- counts[,1]; counts[,1] <- NULL # Move first column to rownames
  meta_data <- read.csv(file.path(refdir,"meta_data.csv")) # load in meta_data (barcodes, clusters, and nUMI)
  cell_types <- meta_data$cluster; names(cell_types) <- meta_data$barcode # create cell_types named list
  cell_types <- as.factor(cell_types) # convert to factor data type
  nUMI <- meta_data$nUMI; names(nUMI) <- meta_data$barcode # create nUMI named list

  ### Create the Reference object
  reference <- Reference(counts, cell_types, nUMI)
  expect(as.character(class(reference)) == "Reference", "Need the right class name")
})
