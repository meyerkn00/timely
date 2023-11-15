
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
#>      checking for file ‘/private/var/folders/29/xs9p5cxx6x1774_yzv_yj4vm0000gw/T/RtmpgsEGUa/remotesb9373aca8fc9/meyerkn00-timely-a2c6b7c/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/29/xs9p5cxx6x1774_yzv_yj4vm0000gw/T/RtmpgsEGUa/remotesb9373aca8fc9/meyerkn00-timely-a2c6b7c/DESCRIPTION’
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

When working with data in R, the time comes to output the data into a
file. Writing that filename should be trivial, but once one considers
adding a timestamp the code becomes more complicated than one would
like:

``` r
data(iris)
write.csv(paste0("iris", "_", format(Sys.time(), format="%m%d%y_%H.%M"), ".csv"))
#> "","x"
#> "1","iris_111523_13.43.csv"
```

The result, “iris_111123_11.00.csv”, is reached, but remembering to
copy-paste and edit this every time one wants to write an output file is
tedious.

That is where timely() comes in.

The same operation in using timely() is as follows:

``` r
library(timely)

data(iris)
write.csv(iris, timely("iris", "csv"))
```

By making some base assumptions (such as the standard date/time format
of mdy_H.M) allows this operation to be completed with fewer keystrokes
and less effort. timely() is built on format() so that one can specify
non-default time formats using that syntax.

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.
