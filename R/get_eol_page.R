#' Get the Encyclopedia Of Life page for a certain species
#' @param species_name name of the species
#' @param use_exact_name only return an EOL page if the species name
#' matches exactly
#' @param verbose be verbose
#' @return a data frame with columns \code{id}, \code{title}, \code{link}
#' and \code{description}
#' @examples
#' library(testthat)
#'
#' df <- get_eol_page(species_name = "Homo sapiens")
#'
#' expect_equal(class(df), "data.frame")
#' expect_true("id" %in% names(df))
#' expect_true("title" %in% names(df))
#' expect_true("link" %in% names(df))
#' expect_true("content" %in% names(df))
#' @export
get_eol_page <- function(species_name, use_exact_name = TRUE, verbose = FALSE) {

  url <- get_eol_url(species_name = species_name, use_exact_name = use_exact_name)
  eol_xml <- RCurl::getURL(url)

  # Get the EOL metadata
  eol_metadata <- XML::xmlToList(
    XML::xmlRoot(
      XML::xmlParse(
        eol_xml,
        getDTD = FALSE
      )
    ),
    simplify = FALSE
  )
  testit::assert("totalResults" %in% names(eol_metadata))
  testit::assert("startIndex" %in% names(eol_metadata))
  testit::assert("itemsPerPage" %in% names(eol_metadata))
  testit::assert("results" %in% names(eol_metadata))
  n_results <- as.numeric(eol_metadata$totalResults$text)
  start_index <- as.numeric(eol_metadata$startIndex$text)
  testit::assert(start_index == 1)
  items_per_page <- as.numeric(eol_metadata$itemsPerPage$text)
  testit::assert(items_per_page >= 1)

  # Zoom in on the results
  eol_results <- eol_metadata$results
  # Remove the last result with the attributes
  testit::assert(names(eol_results)[length(eol_results)] == ".attrs")
  eol_results <- eol_results[1:length(eol_results) - 1]

  # There may be more results that the maximally displayed per page
  # For now, I only read the results of the first page
  testit::assert(n_results >= length(eol_results))
  testit::assert("result" == names(eol_results))

  df <- data.frame(id = rep(NA, n_results), title = NA, link = NA, content = NA)
  for (i in seq_along(eol_results)) {
    eol_result <- eol_results[[i]]
    df$id[i] <- as.numeric(eol_result$id$text)
    df$title[i] <- eol_result$title
    df$link[i] <- eol_result$link
    if (!is.null(eol_result$content)) {
      df$content[i] <- eol_result$content
    }
  }
  df
}
