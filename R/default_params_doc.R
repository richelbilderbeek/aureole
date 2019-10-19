#' This function does nothing. It is intended to inherit is parameters'
#' documentation.
#' @param key Encyclopedia Of Life identification key
#' @param species_id the EOL ID of a species.
#' Use \link{download_search_results} to find the ID of a species
#' @param species_name name of a species
#' @param species_names names of one or more species
#' @param use_exact_name do use the exact name
#' @param verbose give more output
#' @author Richel J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@noRd}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
#'
default_params_doc <- function(
  key,
  species_id,
  species_name,
  species_names,
  use_exact_name,
  verbose
) {
  # Nothing
}
