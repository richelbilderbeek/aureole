#' Process XML Data into tree format
#'
#' This function will read in the XML data and parse it into a tree structure
#' for R to read.
#'
#'
#' @aliases PageProcessing RemoveNAFiles
#' @param MyEOL A filename or R object for downloaded EOL pages
#' @return \code{PageProcessing} returns XML tree as an R object.
#' \code{RemoveNAFiles} is an internal function that will take a vector of
#' filenames and check to make sure they all have data associated (sometimes
#' requested pages will be empty and contain no information).  If they are
#' empty, they are cleaved from the analysis.
#' @examples
#'
#' 	#Reads in a file
#' 	#PageProcessing("eol1.xml")
#'
#' 	#or reads in an R object
#' 	data(MyEOLs)
#' 	PageProcessing(MyEOLs[1])
#'
#'
#' @export PageProcessing
PageProcessing <- function(MyEOL) {
  if(class(MyEOL) == "character" || class(MyEOL) == "vector") {
    res <- XML::xmlToList(
      XML::xmlRoot(
        XML::xmlParse(
          MyEOL, getDTD = FALSE)
      ),
      simplify = FALSE
    )
  } else {
    testit::assert(class(MyEOL) == "list")
    print(MyEOL[[1]])
    res <- XML::xmlToList(
      XML::xmlRoot(
        XML::xmlParse(MyEOL[[1]],
        getDTD=FALSE)
      ),
      simplify=FALSE
    )
  }
  if(is.na(GetHierID(MyEOL)))
    return(paste("Filenames contain NAs"))
  if(!is.null(res$error)){
    paste("Bad file", MyEOL, "has an error:", res$error)
    return(NULL)
  }
  if(is.null(res$error))
    return(res)
}


RemoveNAFiles <- function(MyFiles){
  if(any(is.na(GetHierID(MyFiles)))) {
    whichNAs <- which(is.na(GetHierID(MyFiles)))
    MyFiles <- MyFiles[-whichNAs]
  }
  return(MyFiles)
}
