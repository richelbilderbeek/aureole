#' Check if the Encyclopedia Of Life website can be used by using a
#' simple API call
#' @return TRUE if the Encyclopedia Of Life website can be used,
#' FALSE otherwise
#' @author Richel J.C. Bilderbeek
#' @export
can_use_eol <- function() {
  ping_eol() == "Success"
}
