test_that("use, without key", {
  created <- create_ping_url()
  expected <- "https://eol.org/api/ping.xml"
  expect_equal(created, expected)
})

test_that("use, with key", {
  created <- create_ping_url(key = "my_key")
  expected <- "https://eol.org/api/ping.xml?key=my_key"
  expect_equal(created, expected)
})
