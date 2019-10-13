test_that("use", {
  expect_silent(get_eol_url("Homo sapiens"))
  expect_equal(
    get_eol_url(species_name = "Homo sapiens"),
    "https://eol.org/api/search/1.0.xml?q=Homo+sapiens&exact=TRUE&page=1"
  )
  expect_equal(
    get_eol_url(species_name = "Homo sapiens", use_exact_name = FALSE),
    "https://eol.org/api/search/1.0.xml?q=Homo+sapiens&exact=FALSE&page=1"
  )
})
