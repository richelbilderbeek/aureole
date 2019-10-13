#' Get the Encyclopedia Of Life pages for multiple taxa
#' @return a list with as much elements as taxon names. Each
#' element is a data frame
#' @author Richel J.C. Bilderbeek
#' @export
get_eol_pages <- function(taxon_names) {
  pages <- list()
  for (i in seq_along(taxon_names)) {
    pages[[i]] <- get_eol_page(taxon_names[i])
  }
  pages
}
