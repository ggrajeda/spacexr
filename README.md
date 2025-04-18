# spacexr: Cell Type Identification in Spatial Transcriptomics

Robust Cell Type Decomposition (RCTD) is a computational method for deconvolving
cell type mixtures in spatial transcriptomics data. RCTD learns cell type
profiles from annotated RNA sequencing (RNA-seq) reference data and uses these
profiles to identify cell types in spatial transcriptomic pixels while
accounting for platform-specific effects.

This is a fork of Dylan Cable's
[original package](https://github.com/dmcable/spacexr), adapted to work with
Bioconductor objects.

## Installation

You can install the latest version of spacexr from Bioconductor:

```r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("spacexr")
```

## Getting Started

```r
library(SpatialExperiment)
library(SummarizedExperiment)

library(spacexr)

# Spatial transcriptomics data
spatial_spe <- SpatialExperiment(
    assay = your_spatial_counts,              # genes x pixels matrix
    spatialCoords = your_spatial_coordinates  # x,y coordinates matrix
)

# Single-cell reference data
reference_se <- SummarizedExperiment(
    assays = list(counts = your_reference_counts),  # genes x cells matrix
    colData = your_cell_annotations                 # cell type annotations df
)

# Configure and run RCTD
rctd_data <- createRctd(spatial_spe, reference_se)
results <- runRctd(rctd_data, rctd_mode = "doublet", max_cores = 4)

# Visualize results
plotAllWeights(results, title = "Cell Type Proportions")
```

For a detailed tutorial, please see the package vignette:
`browseVignettes("spacexr")`.

## Citation

If you use this work for cell type estimation, please cite:

Cable, Dylan M., et al. "Robust decomposition of cell type mixtures in spatial transcriptomics." *Nature Biotechnology* 40.4 (2022): 517-526.
