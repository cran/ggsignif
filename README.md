# ggsignif
Easily add significance bars to your ggplots


## Description
This package provides an easy way to indicate if two groups are significantly different.
Commonly this is shown with a by a bar on top connecting the groups of interest which itself is annoted with the level of significance (NS, *, **, ***).
The package provides a single layer (geom_signif) that takes the groups for comparison and the test (t.test, wilcox etc.) and adds the annotation
to the plot.


## Example

Install package

```r
install.packages("ggsignif")

# Or for the latest development version
devtools::install_github("Artjom-Metro/ggsignif")
```

Plot significance

``` r
library(ggplot2)
library(ggsignif)
ggplot(mpg, aes(class, hwy)) +
   geom_boxplot() +
   geom_signif(comparisons = list(c("compact", "midsize"), c("minivan", "suv")),
               map_signif_level = TRUE)
```

![Result Plot](https://github.com/Artjom-Metro/ggsignif/blob/master/tests/example.png)


For further details go the [CRAN page](https://CRAN.R-project.org/package=ggsignif) and check the examples in the [vignette](https://CRAN.R-project.org/package=ggsignif/vignettes/intro.html).
