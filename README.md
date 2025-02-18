# spacexr: Cell Type Identification in Spatial Transcriptomics

Robust Cell Type Decomposition (RCTD) is a computational method for deconvolving
cell type mixtures in spatial transcriptomics data. RCTD learns cell type
profiles from annotated RNA sequencing (RNA-seq) reference data and uses these
profiles to identify cell types in spatial transcriptomic pixels while
accounting for platform-specific effects.

## Installation

You can install the latest version of spacexr from Bioconductor:

```r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("spacexr")
```

## Getting Started

```r
library(spacexr)

# Create Reference object from your single-cell data
reference <- Reference(
    counts = your_reference_counts,      # genes x cells matrix
    cell_types = your_cell_annotations   # cell type annotations
)

# Create SpatialRNA object from your spatial data
puck <- SpatialRNA(
    coords = your_spatial_coordinates,   # data frame with x,y columns
    counts = your_spatial_counts         # genes x pixels matrix
)

# Configure and run RCTD
rctd <- create.RCTD(puck, reference, max_cores = 4)
results <- run.RCTD(rctd, doublet_mode = "doublet")

# Visualize results
plot_all_weights(results, title = "Cell Type Proportions")
```

For a detailed tutorial, please see the package vignette:
`browseVignettes("spacexr")`.
