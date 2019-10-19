#' Convert a human written name to something that can fit in a URL
#'
#' Convert a human written name to something that can fit in a URL
#'
#' Inspired on \code{Reol::APItaxon}
#'
#' @param species_name name of the species
#' @author Richel J.C. Bilderbeek
#' @export to_url_friendly_format
to_url_friendly_format <- function(species_name) {
  gsub(pattern = "(_| )", "+", species_name)
}
