# TCGA-LUSC-Using-TCGA-Biolinks
#if (!requireNamespace("BiocManager", quietly = TRUE))
#install.packages("BiocManager")
#BiocManager::install("maftools")
#install.packages("pheatmap")
library(TCGAbiolinks)
library(tidyverse)

library(maftools)
library(pheatmap)
library(SummarizedExperiment)

#obtain project lists
gdcprojects <- getGDCprojects()
getProjectSummary('TCGA-LUSC')
