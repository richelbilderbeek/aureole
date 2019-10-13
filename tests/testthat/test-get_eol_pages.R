test_that("use", {
  taxon_names <- c(
    "Pan troglodytes",
    "Pan paniscus"
  )
  pages <- get_eol_pages(taxon_names)
  expect_equal(length(taxon_names), length(pages))
})
