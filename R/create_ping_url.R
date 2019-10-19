#' Create the URL to ping the Encyclopedia of Life
#' @inheritParams default_params_doc
#' @author Richel J.C. Bilderbeek
create_ping_url <- function(key = NULL) {
  url <- "https://eol.org/api/ping.xml"
  if (!is.null(key)) {
    url <- paste0(url, "?key=", key)
  }
  url
}
