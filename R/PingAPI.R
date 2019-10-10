PingAPI <- function(MyKey=NULL) {
  web <- "https://eol.org/api/ping.xml"
  if(!is.null(MyKey))
    web <- paste(web, "?key=", MyKey, sep="")
  a <- getURL(web)
  XML::xmlToList(
    XML::xmlRoot(
      XML::xmlParse(a, getDTD = FALSE)
    )
  )$response$message
}
