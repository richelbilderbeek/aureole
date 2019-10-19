#' Get the Encyclopedia Of Life pages for multiple taxa
#' @return a list with as much elements as taxon names. Each
#' element is a data frame
#' @author Richel J.C. Bilderbeek
#' @export
download_searches_results <- function(taxon_names) {
  pages <- list()
  for (i in seq_along(taxon_names)) {
    pages[[i]] <- download_search_results(taxon_names[i])
  }
  pages
}
