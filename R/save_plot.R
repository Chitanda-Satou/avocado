#' Automatically create a directory and save a plot.
#'
#' @param p A plot.
#' @param f Save to this file.
#' @param w Width
#' @param h Height
#'
#' @return None
#' @export
#'
#' @examples
#'
#' p1 <- ggpubr::ggboxplot(
#'   data = ToothGrowth
#'   , x = "supp"
#'   , y = "dose"
#'   , color = "supp"
#' )
#'
#' save_plot(p = p1, f = "Figures/01.pdf", w = 5, h = 8)
#'
save_plot <- function(p, f, w = 7, h = 7) {
  output <- f
  output_dir <- dirname(output)
  if (!dir.exists(output_dir)) {
    dir.create(output_dir, recursive = TRUE)
  }
  # try to save plot as ggplot2 object
  ggplot2::ggsave(filename = output, plot = p, width = w, height = h)
}



