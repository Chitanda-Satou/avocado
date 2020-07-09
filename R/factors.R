#' Get the number of unique levels of a vector.
#'
#' @param x A vector.
#' @param na.rm If TRUE, ignore NA.
#'
#' @return A number of levels.
#' @export
#'
#' @examples
#'
#' n_levels(c(rep("A", 3), rep("B", 2), rep("C", 1)))
#'
n_levels <- function(x, na.rm = TRUE) {
  if (na.rm) {
    x <- na.omit(x)
  }
  x <- unique(x)
  levels_num <- length(x)
  return(levels_num)
}


#' Judge whether a vector is a factor or a continuous variable.
#'
#' @param vec A vector.
#' @param levels_threshold If the vector's levels n > levels_threshold, return FALSE.
#'
#' @return Bool.
#' @export
#'
#' @examples
#'
#' is_factor(1:10) # FALSE
#' is_factor(1:5) # TRUE
#'
is_factor <- function(vec, levels_threshold = 5) {
  vec <- na.omit(vec)
  n_levels <- length(unique(vec))
  if (n_levels > levels_threshold) {
    return(FALSE)
  } else {
    return(TRUE)
  }
}
