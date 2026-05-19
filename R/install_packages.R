# Packages to install for the course Mol923
# open RStudio and run (execute) the following lines

update.packages()

# CRAN packages
# Package names
packages <- c("BiocManager", "tidyverse", "ape", "phytools", "remotes",
              "caret", "vegan", "patchwork", "pheatmap", "ggmsa", "phytools",
              "devtools", "phyloregion", "fastmatch")


# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}


# install development versions of some packages
install.packages('phangorn', repos = c('https://klausvigo.r-universe.dev', 
                            'https://cloud.r-project.org'), dependencies=TRUE)
install.packages('msa', repos = c('https://bioc.r-universe.dev', 
                 'https://cloud.r-project.org'), dependencies=TRUE)
install.packages('GenomicRanges', repos = c('https://bioc.r-universe.dev', 
                 'https://cloud.r-project.org'))
install.packages('SingleCellExperiment', repos = c('https://bioc.r-universe.dev', 
                  'https://cloud.r-project.org'))
install.packages('scater', repos = c('https://bioc.r-universe.dev', 
                 'https://cloud.r-project.org'))
install.packages('mia', repos = c('https://bioc.r-universe.dev', 'https://cloud.r-project.org'))
install.packages('miaViz', repos = c('https://bioc.r-universe.dev', 'https://cloud.r-project.org'))
install.packages('EnhancedVolcano', repos = c('https://bioc.r-universe.dev', 'https://cloud.r-project.org'))

# Bioconductor packages
packages <- c("Rsamtools", "rtracklayer", "DESeq2", "edgeR", "AnnotationDbi", 
              "EnhancedVolcano", "ComplexHeatmap", "clusterProfiler",
              "org.EcK12.eg.db", "org.EcSakai.eg.db", 
              "microbiome", "mia", "miaViz", "tanggle", "scater",
              "DECIPHER", "ggtree")
# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  BiocManager::install(packages[!installed_packages])
}









