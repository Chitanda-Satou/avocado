#' Detect and create the directory of the output file.
#'
#' @param output A file's name.
#'
#' @return None
#' @export
#'
#' @examples
#'
#' # directory "foo/bar/" does not exist.
#' mkdir(output = "foo/bar/foobar")
#'
#'
mkdir <- function(output) {
  output_dir <- dirname(output)
  if (!dir.exists(output_dir)) {
    dir.create(output_dir, recursive = TRUE)
  }
}
