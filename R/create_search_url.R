#' Create a URL to search the Encyclopedia of Life
#' @export
create_search_url <- function(
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
