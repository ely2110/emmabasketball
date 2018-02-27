#' A Basketball Function of a Correlation Matrix
#'
#' This function allows you to input a year and find out the correlation matrix of all numeric vairables in that year.
#' @param cormatrix Returns the correlation matrix for that year
#' @keywords basketball, year, correlation, matrix
#' @export
#' @examples
#' year_cormatrix()

year_cormatrix <- function(x){
  basketballc <- subset(Seasons_Stats_NBA, Year == x)
  continuousb <- sapply(basketballc, is.numeric)
  basketballc <- purrr::keep(basketballc, continuousb)
  cortable <- cor(basketballc)
  print(cortable[1:10,])
}
