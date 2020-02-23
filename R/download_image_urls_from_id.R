#' Get the URLs of the Encyclopedia Of Life images
#' for that species
#' @inheritParams default_params_doc
#' @return a URL if there is a URL, an empty string otherwise
#' @examples
#' species_id <- download_search_results("Homo sapiens")$id[1]
#' urls <- download_image_urls_from_id(species_id)
#' @export
download_image_urls_from_id <- function(species_id) {

  url <- paste0(
    "https://eol.org/api/pages/1.0/", species_id, ".xml",
    "?details=true",
    "&images_per_page=10"
  )
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
  testit::assert("taxonConcept" %in% names(eol_metadata))
  taxon_concept <- eol_metadata$taxonConcept
  testit::assert("identifier" %in% names(taxon_concept))
  testit::assert("scientificName" %in% names(taxon_concept))
  testit::assert("richness-score" %in% names(taxon_concept))
  testit::assert("taxonConcepts" %in% names(taxon_concept))
  if (!"dataObjects" %in% names(taxon_concept)) {
    stop("No image URL found for species with ID ", species_id);
  }
  testit::assert("dataObjects" %in% names(taxon_concept))

  data_objects <- taxon_concept$dataObjects
  testit::assert(names(data_objects)[length(data_objects)] == ".attrs")
  data_objects <- data_objects[1:(length(data_objects) - 1)]
  testit::assert("dataObject" == names(data_objects))

  n_data_objects <- length(data_objects)
  image_urls <- rep(NA, n_data_objects)

  for (i in seq_along(data_objects)) {
     image_urls[i] <- data_objects[[i]]$eolMediaURL
  }
  image_urls
}
