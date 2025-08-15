#' Expected Stormwater Calculations
#'
#' @param Rd number representing the "design storm rainfall depth" in inches
#' @param Ia number representing the fraction of a given watershed that is considered to be impervious. This parameter is unitless
#' @param A number representing the watershed area in acres
#'
#' This function performs analysis in two steps. First, a runoff coefficient (Rv) is calculated using the Ia value as input. This runoff coefficient is then used to produce the value V
#'
#' @returns the expected volume of stormwater runoff in cubic feet
#' @export
#'
#' @examples Rd = 5 inches, Ia = 0.667, A = 2000 acres
#'           predict_runoff(Rd = 5, Ia = 0.6667, A = 2000)
#'             > Rv <- (0.05 + 0.9 * (0.6667)) = 0.65
#'             > V <- 3630 * 5in * 0.65 * 2000acres = 23605890 in^3
#' 
#' 
#' 
predict_runoff <- function(Rd, Ia, A) {
  
  Rv <- (0.05 + 0.9 * Ia)
  
  V <- 3630 * Rd * Rv * A
  return(V)
    
}

predict_runoff(5, 0.667, 2000)



