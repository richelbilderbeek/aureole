test_that("use", {
  # Pick a species ID
  species_id <- download_search_results("Homo sapiens")$id[1]

  # Find the URL
  urls <- download_image_urls_from_id(species_id)

  # It can be downloaded
  destfile <- tempfile()
  utils::download.file(
    url = urls[1],
    destfile = destfile,
    quiet = TRUE
  )
  expect_true(file.exists(destfile))
})

test_that("no dataObjects", {
  expect_error(
    download_image_urls_from_id(species_id = 18832476),
    "No image URL found for species with ID 18832476"
  )
})

