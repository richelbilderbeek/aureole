test_that("use", {
  # Pick a species ID
  species_id <- get_eol_page("Homo sapiens")$id[1]

  # Find the URL
  urls <- get_image_urls_from_id(species_id)

  # It can be downloaded
  expect_silent(curl::curl_download(urls[1], destfile = tempfile()))
})

test_that("no dataObjects", {
  expect_error(
    get_image_urls_from_id(species_id = 18832476),
    "No image URL found for species with ID 18832476"
  )
})

