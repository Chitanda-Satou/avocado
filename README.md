# avocado  
  
![](https://img.shields.io/badge/license-MIT-green)

This is an R package of useful R functions for medical statistics and plotting, 
in order to reduce the amount of code in the process of medical statistics.

## Install dependent R packages

Install packages from CRAN:    

```
dependent_packages <- c("ggpubr", "tidyverse", "pheatmap", "corrplot", "ComplexHeatmap", "BiocManager")
install.packages(dependent_packages)

```

## Usage cases

Save an image in one line of code, regardless of whether the destination folder exists or not.

```
p1 <- ggpubr::ggboxplot(
  data = ToothGrowth
  , x = "supp"
  , y = "dose"
  , color = "supp"
)
save_plot(p = p1, f = "Figures/01.pdf", w = 5, h = 8)
```

