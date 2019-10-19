#' Ping the Encyclopedia Of Life
#'
#' A 'ping' is a simple call to indicate if an API is in working
#' order.
#' @inheritParams default_params_doc
#' @return the word \code{Success} (taken from the Encyclopedia Of Life's
#' XML response), will \link{stop} otherwise
#' @seealso use \link{can_use_eol} to get a boolean to indicate the
#' Encylopedia Of Life is in working order
#' @examples
#' library(testthat)
#'
#' result <- ping_eol()
#' expect_equal(ping_eol(), "Success")
#' @export
ping_eol <- function(key = NULL) {
  XML::xmlToList(
    XML::xmlRoot(
      XML::xmlParse(
        RCurl::getURL(
          create_ping_url(key = key)
        ),
        getDTD = FALSE
      )
    )
  )$response$message
}
