test_that("use", {
  expect_silent(create_search_url("Homo sapiens"))
  expect_equal(
    create_search_url(species_name = "Homo sapiens"),
    "https://eol.org/api/search/1.0.xml?q=Homo+sapiens&exact=TRUE&page=1"
  )
  expect_equal(
    create_search_url(species_name = "Homo sapiens", use_exact_name = FALSE),
    "https://eol.org/api/search/1.0.xml?q=Homo+sapiens&exact=FALSE&page=1"
  )
})
