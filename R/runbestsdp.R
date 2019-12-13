#' Run the Burden ESTimate in Settlements of Displaced Populations (BESTSDP) Shiny Web Application
#'
#' Function \code{runbestsdp} is used start the BESTSDP Shiny Web Application.\cr
#' BestSDP is a web application created to serve as a graphical user interface for generating figures and tables for burden of conmmon communicable diseases estimate in SDP.
#' It was created using Shiny, a web application framework for R. \cr
#'
#' @name runbestsdp
#'
#' @param launch.browser whether if you want to launch the app in an external browser.
#' @param ... other parameters passed to shiny::runApp.
#'
#' @examples
#' \donttest{
#' library("bestSDP")
#' runbestsdp(launch.browser = TRUE)
#' }
#'
#' @author You Li,  \email{You.Li2@@ed.ac.uk}
#' @export
#' @importFrom shiny runApp
runbestsdp <- function(launch.browser = TRUE, ...) {
  appDir <- system.file("shinyapps", "bestsdp", package = "bestSDP")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `bestSDP`.", call. = FALSE)
  }

  shiny::runApp(appDir, launch.browser = launch.browser, ...)
}

