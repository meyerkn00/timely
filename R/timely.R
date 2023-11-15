#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' Generate a time-stamped filename
#'
#' @param name a string with the title of the file
#' @param extension a file extension, e.g. csv or dta
#' @param time optional timestamp defintion, see format() for syntax
#'
#' @return a string
#' @export
#'
#' @examples
#' timely()
#' timely("data_output", "dta", "%m%d%y_%H.%M")
timely <- function(name = "test", extension = "csv", time = "%m%d%y_%H.%M") {
  paste0(name, "_", format(Sys.time(), format = time), ".", extension)
}
