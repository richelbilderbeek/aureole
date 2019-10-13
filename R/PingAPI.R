#' Test the working order of the EOL API
#'
#' This function will send out a ping to the EOL API to make sure it is in
#' working order. The EOL server will return either a message of success or
#' failure.
#'
#'
#' @param MyKey An optional user identification key to identify yourself to EOL
#' @return Returns a message with success or failure.
#' @examples
#'
#' 	PingAPI()
#' 	#PingAPI(MyKey)
#'
#' @export PingAPI
PingAPI <- function(MyKey=NULL) {
  web <- "https://eol.org/api/ping.xml"
  if(!is.null(MyKey))
    web <- paste(web, "?key=", MyKey, sep="")
  a <- RCurl::getURL(web)
  XML::xmlToList(
    XML::xmlRoot(
      XML::xmlParse(a, getDTD = FALSE)
    )
  )$response$message
}
