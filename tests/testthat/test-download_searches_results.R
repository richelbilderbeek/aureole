test_that("use", {
  taxon_names <- c(
    "Pan troglodytes",
    "Pan paniscus"
  )
  pages <- download_searches_results(taxon_names)
  expect_equal(length(taxon_names), length(pages))
})
