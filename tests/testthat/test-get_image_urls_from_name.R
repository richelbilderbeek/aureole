test_that("use", {

  df <- get_image_urls_from_name("Homo sapiens")

  # It can be downloaded
  expect_silent(curl::curl_download(df$url[1], destfile = tempfile()))
})
