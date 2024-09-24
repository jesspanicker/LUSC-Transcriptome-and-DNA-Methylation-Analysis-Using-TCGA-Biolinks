#scrip to download data from TCGA using TCGA biolinks

if (!requireNamespace("BiocManager", quietly = TRUE))
install.packages("BiocManager")
BiocManager::install("maftools")
install.packages("pheatmap")
library(TCGAbiolinks)
library(tidyverse)
library(maftools)
library(pheatmap)
library(SummarizedExperiment)


#obtain project lists
gdcprojects <- getGDCprojects()
getProjectSummary('TCGA-LUSC')


# build a query
query_TCGA <- GDCquery(project = 'TCGA-LUSC', data.category = 'Transcriptome Profiling' )

output_query_TCGA <- getResults(query_TCGA)

# Build query to obtain gene expression data

query_TCGA <- GDCquery(project = 'TCGA-LUSC', data.category = 'Transcriptome Profiling', access = 'open', experimental.strategy = 'RNA-Seq', workflow.type = 'STAR - Counts', barcode = c('TCGA-43-7657-11A-01R-2125-07', 'TCGA-43-7657-01A-31R-2125-07', 'TCGA-60-2695-01A-01R-0851-07') )

getResults(query_TCGA)

#Download data with GDCdownload

GDCdownload(query_TCGA)

#prepare data

tcga_lusc_data <- GDCprepare(query_TCGA, summarizedExperiment = TRUE)
lusc_matrix <- assay(tcga_lusc_data, 'unstranded' )
#View(lusc_matrix)
