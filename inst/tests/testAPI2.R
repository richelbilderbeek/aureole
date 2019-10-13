test_that("API unchanged2", {
  MyTaxa <- c("Camelus bactrianus", "Camelus dromedarius", "Hippopotamus amphibius", "Rattus rattus", "Rana cascadae", "Bufo bufo")
  testEOLs <- DownloadSearchedTaxa(MyTaxa, to.file=FALSE)
  testHiers <- DownloadHierarchy(
    MyEOLs = testEOLs,
    to.file = FALSE,
    database = "NCBI Taxonomy"
  )
  is_identical_to(testHiers, MyHiers)
})
