test_that("API unchanged", {
  skip("Not now")
  MyTaxa <- c("Camelus bactrianus", "Camelus dromedarius", "Hippopotamus amphibius", "Rattus rattus", "Rana cascadae", "Bufo bufo")
  testEOLs <- DownloadSearchedTaxa(MyTaxa, to.file=FALSE)
  is_identical_to(testEOLs, MyEOLs)
})
