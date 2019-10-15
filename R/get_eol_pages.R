#' Get the Encyclopedia Of Life pages for multiple taxa
#' @inheritParams default_params_doc
#' @return a list with as much elements as taxon names. Each
#' element is a data frame
#' @author Richel J.C. Bilderbeek
#' @export
get_eol_pages <- function(species_name) {
  pages <- list()
  for (i in seq_along(species_name)) {
    pages[[i]] <- get_eol_page(species_name[i])
  }
  pages
}
