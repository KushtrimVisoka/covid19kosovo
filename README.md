
<!-- README.md is generated from README.Rmd. Please edit that file -->

# covid19kosovo

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the released version of covid19kosovo from GitHub with:

``` r
# install.library("devtool)
devtools::install_github("Kushtrimvisoka/covid19kosovo")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(covid19kosovo)
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
data <- covid19kosovo(level = "total") 

head(data)
#>         date confirmed healed dead confirmed_cumulative healed_cumulative
#> 1 2020-03-13         2      0    0                    2                 0
#> 2 2020-03-14         3      0    0                    5                 0
#> 3 2020-03-15         3      0    0                    8                 0
#> 4 2020-03-16         7      0    0                   15                 0
#> 5 2020-03-17         4      0    0                   19                 0
#> 6 2020-03-18         1      0    0                   20                 0
#>   dead_cumulative active
#> 1               0      2
#> 2               0      5
#> 3               0      8
#> 4               0     15
#> 5               0     19
#> 6               0     20
```

``` r
data <- covid19kosovo(level = "municipality") 

head(data)
#>         date id municipality confirmed
#> 1 2020-03-13 14        Klinë         1
#> 2 2020-03-13 35         Viti         1
#> 3 2020-03-14 18    Malishevë         1
#> 4 2020-03-14 35         Viti         2
#> 5 2020-03-15 18    Malishevë         3
#> 6 2020-03-16 23       Obiliq         1
```

``` r
data <- covid19kosovo(level = "village") 

head(data)
#>         date id municipality    cadastral_zone confirmed
#> 1 2020-03-13 14        Klinë         Dranashiq         1
#> 2 2020-03-13 35         Viti Stubëll e Poshtme         1
#> 3 2020-03-14 18    Malishevë           Bubavec         1
#> 4 2020-03-14 35         Viti Stubëll e Poshtme         2
#> 5 2020-03-15 18    Malishevë           Bubavec         1
#> 6 2020-03-15 18    Malishevë     Llashkadrenoc         1
```

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub!
