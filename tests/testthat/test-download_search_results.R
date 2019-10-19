test_that("use, Homo sapiens", {
  df <- download_search_results(species_name = "Homo sapiens")
  expect_equal(class(df), "data.frame")
  expect_true("id" %in% names(df))
  expect_true("title" %in% names(df))
  expect_true("link" %in% names(df))
  expect_true("content" %in% names(df))
})

test_that("use, Pan troglodytes", {
  expect_silent(download_search_results(species_name = "Pan troglodytes"))
})

test_that("abuse", {
  expect_error(
    download_search_results(
      species_name = c("two", "too", "many")
    ),
    "'species_name' must be one species name"
  )
})

