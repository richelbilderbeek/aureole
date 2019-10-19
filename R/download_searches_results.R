#' Get the Encyclopedia Of Life pages for multiple taxa
#' @inheritParams default_params_doc
#' @return a list with as much elements as taxon names. Each
#' element is a data frame
#' @author Richel J.C. Bilderbeek
#' @seealso use \link{download_search_results} to search for one species
#' @examples
#' library(testthat)
#'
#' species_names <- c("Homo sapiens", "Pan troglodytes")
#' results <- download_searches_results(species_names)
#'
#' expect_equal(class(results), "list")
#' expect_equal(length(results), length(species_names))
#'
#' df <- results[[1]]
#' expect_equal(class(df), "data.frame")
#' expect_true("id" %in% names(df))
#' expect_true("title" %in% names(df))
#' expect_true("link" %in% names(df))
#' expect_true("content" %in% names(df))
#' @export
download_searches_results <- function(
  species_names,
  use_exact_name = TRUE,
  verbose = FALSE
) {
  pages <- list()
  for (i in seq_along(species_names)) {
    pages[[i]] <- download_search_results(
      species_name = species_names[i],
      use_exact_name = use_exact_name,
      verbose = verbose
    )
  }
  pages
}
