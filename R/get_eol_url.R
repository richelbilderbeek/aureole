#' Get the Encyclopedia of Life URL for requesting a species
#' @inheritParams default_params_doc
#' @export
get_eol_url <- function(
  species_name,
  use_exact_name = TRUE
) {
  paste0(
    "https://eol.org/api/search/1.0.xml",
    "?q=", to_url_friendly_format(species_name),
    "&exact=", use_exact_name,
    "&page=1"
  )
}
