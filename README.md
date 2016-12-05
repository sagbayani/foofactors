foofactors R package (Homework 09)
================
Selina Agbayani
2016-12-05

<!-- README.md is generated from README.Rmd. Please edit that file -->
\*\*STAT 547 -- Homework 08

This is a toy R package for the UBC course STAT547. It will likely not be useful for actual analysis.

### foofactors

Factors are a very useful type of variable in R, but they can also drive you nuts. This package provides some helper functions for the care and feeding of factors.

### Installation

    devtools::install_github("sagbayani/foofactors")

### Quick demo

Binding two factors via `fbind()`:

    library(foofactors)
    a <- factor(c("character", "hits", "your", "eyeballs"))
    b <- factor(c("but", "integer", "where it", "counts"))

Simply catenating two factors leads to a result that most don't expect.

    c(a, b)

The `fbind()` function glues two factors together and returns factor.

    fbind(a, b)

Often we want a table of frequencies for the levels of a factor. The base `table()` function returns an object of class `table`, which can be inconvenient for downstream work. Processing with `as.data.frame()` can be helpful but it's a bit clunky.

    set.seed(1234)
    x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
    table(x)
    as.data.frame(table(x))

The `freq_out()` function returns a frequency table as a well-named `tbl_df`:

    freq_out(x)
