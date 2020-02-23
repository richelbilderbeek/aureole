#' Get the Encyclopedia Of Life image URL from a species name
#' @inheritParams default_params_doc
#' @return a data frame with species name, ID and URLs
#' @export
download_image_urls_from_name <- function(
  species_name,
  use_exact_name = TRUE,
  verbose = FALSE
) {
  df <- download_search_results(
    species_name = species_name,
    use_exact_name = use_exact_name,
    verbose = verbose
  )
  ids <- df$id
  urls_list <- list()
  for (i in seq_along(ids)) {
    urls_list[[i]] <- list(title = df$title[i], id = ids[i], urls = NA)

    # Try to find the URL, do nothing if it cannot be found
    tryCatch({
      urls_list[[i]]$urls <- aureole::download_image_urls_from_id(ids[i])
    }, error = function(e) {} # nolint OK, URL is not found
    )
  }

  # Convert to tibble
  df <- data.frame(
    title = NULL, id = NULL, url = NULL, stringsAsFactors = FALSE
  )
  for (i in seq_along(urls_list)) {
    list_element <- urls_list[[i]]
    if (all(is.na(list_element$urls))) next
    sub_df <- data.frame(
      title = list_element$title,
      id = list_element$id, url = list_element$urls
    )
    df <- rbind(df, sub_df)
  }
  df$url <- as.character(df$url)
  df
}
