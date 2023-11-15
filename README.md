
<!-- README.md is generated from README.Rmd. Please edit that file -->

# timely

<!-- badges: start -->
<!-- badges: end -->

The goal of timely is to simplify the creation of filenames when using
functions such as write_csv() or write_dta(). It provides one function,
timely(), which does so.

## Installation

You can install the development version of timely from
[GitHub](https://github.com/timely) with:

``` r
# install.packages("devtools")
devtools::install_github("meyerkn00/timely")
#> Downloading GitHub repo meyerkn00/timely@HEAD
#> ── R CMD build ─────────────────────────────────────────────────────────────────
#>      checking for file ‘/private/var/folders/29/xs9p5cxx6x1774_yzv_yj4vm0000gw/T/RtmpFq7aa4/remotesaf491bc62e1/meyerkn00-timely-6306677/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/29/xs9p5cxx6x1774_yzv_yj4vm0000gw/T/RtmpFq7aa4/remotesaf491bc62e1/meyerkn00-timely-6306677/DESCRIPTION’
#>   ─  preparing ‘timely’:
#>      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
#>   ─  checking for LF line-endings in source and make files and shell scripts
#>   ─  checking for empty or unneeded directories
#>      Omitted ‘LazyData’ from DESCRIPTION
#>   ─  building ‘timely_0.1.0.tar.gz’
#>      
#> 
#> Installing package into '/Users/meyerkn/Library/R/x86_64/4.2/library'
#> (as 'lib' is unspecified)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(timely)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
