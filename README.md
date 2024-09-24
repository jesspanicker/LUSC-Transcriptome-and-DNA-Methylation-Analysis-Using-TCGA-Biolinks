# TCGA-LUSC Transcriptome and DNA Methylation Analysis

This project demonstrates how to analyze transcriptome profiling and DNA methylation data from The Cancer Genome Atlas (TCGA) for the TCGA-LUSC (Lung Squamous Cell Carcinoma) dataset using R. 
The workflow includes querying, downloading, preparing the data, and visualizing the DNA methylation beta values using a heatmap.

## Requirements

This analysis requires the following R libraries:
- `TCGAbiolinks`: Interface for querying and downloading data from TCGA and GDC.
- `maftools`: Tools for analyzing and visualizing mutation annotation format (MAF) data.
- `pheatmap`: For generating heatmaps from the data.
- `SummarizedExperiment`: For working with gene expression data.
- `tidyverse`: For data manipulation.

To install the required libraries, run:

```r
# Install Bioconductor manager if not available
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

# Install necessary packages
BiocManager::install(c("TCGAbiolinks", "maftools", "SummarizedExperiment"))
install.packages("pheatmap")
