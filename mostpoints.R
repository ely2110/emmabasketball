#' A Basketball Function of Most Points
#'
#' This function allows you to input a year and find out who has the most points in that year.
#' @param mostpoints Returns the player with the most points in that year
#' @keywords basketball, year, most, points, player
#' @export
#' @examples
#' year_mostpoints()


year_mostpoints <- function(x){
  basketballp <- subset(Seasons_Stats_NBA, Year == x)
  basketballp <- basketballp[order(-basketballp$PTS),]
  print(basketballp[1,])
}
