test_that("use, Homo sapiens", {
  df <- get_eol_page(species_name = "Homo sapiens")
  expect_equal(class(df), "data.frame")
  expect_true("id" %in% names(df))
  expect_true("title" %in% names(df))
  expect_true("link" %in% names(df))
  expect_true("content" %in% names(df))
})

test_that("use, Pan troglodytes", {
  expect_silent(get_eol_page(species_name = "Pan troglodytes"))
})

