
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
#> * checking for file ‘/private/var/folders/29/xs9p5cxx6x1774_yzv_yj4vm0000gw/T/Rtmprgp3m1/remotescb1f1bbad313/meyerkn00-timely-7d86ef6/DESCRIPTION’ ... OK
#> * preparing ‘timely’:
#> * checking DESCRIPTION meta-information ... OK
#> * checking for LF line-endings in source and make files and shell scripts
#> * checking for empty or unneeded directories
#> Omitted ‘LazyData’ from DESCRIPTION
#> * building ‘timely_0.1.0.tar.gz’
#> Installing package into '/private/var/folders/29/xs9p5cxx6x1774_yzv_yj4vm0000gw/T/Rtmp0EE7i8/temp_libpathaaaf6ee68649'
#> (as 'lib' is unspecified)
```

## Example

When working with data in R, the time comes to output the data into a
file. Writing that filename should be trivial, but once one considers
adding a timestamp the code becomes more complicated than one would
like:

``` r
paste0("iris", "_", format(Sys.time(), format="%m%d%y_%H.%M"), ".csv")
#> [1] "iris_111523_15.59.csv"
```

The result, “iris_111123_11.00.csv”, is reached, but remembering to
copy-paste and edit this every time one wants to write an output file is
tedious.

That is where timely() comes in.

The same operation using timely() is done as follows:

``` r
library(timely)

timely("iris", "csv")
#> [1] "iris_111523_15.59.csv"
```

By making some base assumptions (such as the standard date/time format
of mdy_H.M) allows this operation to be completed with fewer keystrokes
and less effort. timely() is built on format() so that one can specify
non-default time formats using that syntax. This function can be used
within functions like write.csv() and haven::write_dta() to create
filenames.

## Please note:

Currently this project is written for the use of the developer. As such,
the timezone is not specified and the time/date format defaults to North
American structure (e.g. month/date/year). If you would like different
defaults supported, please reach out at <karl@themeyers.org> and let me
know.
