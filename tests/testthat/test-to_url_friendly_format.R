test_that("use", {
  expect_equal(
    to_url_friendly_format("Bufo bufo"),
    "Bufo+bufo"
  )
})
