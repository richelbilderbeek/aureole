test_that("use", {

  df <- get_image_urls_from_name("Homo sapiens")

  # It can be downloaded
  destfile <- tempfile()
  utils::download.file(
    url = df$url[1],
    destfile = destfile,
  )
  expect_true(file.exists(destfile))
})
