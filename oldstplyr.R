#' A Basketball Function of Oldest Player
#'
#' This function allows you to input a year and find out who was the oldest player in that year.
#' @param oldstplyr Returns the oldest player in that year
#' @keywords basketball, year, oldest, player
#' @export
#' @examples
#' year_oldstplyr()

year_oldstplyr <- function(x){
  basketballo <- subset(Seasons_Stats_NBA, Year == x)
  basketballo <- basketballo[order(-basketballo$Age),]
  print(basketballo[1,])
}
