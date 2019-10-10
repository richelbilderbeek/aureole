test_that("API unchanged", {
  ListOfTaxa <- c("Camelus bactrianus", "Camelus dromedarius", "Hippopotamus amphibius", "Rattus rattus", "Rana cascadae", "Bufo bufo")
  testEOLs <- DownloadSearchedTaxa(ListOfTaxa = ListOfTaxa, to.file = FALSE)
  is_identical_to(testEOLs, MyEOLs)
})
