## generate levels for a factor


#' Generate Levels
#'
#' Generate coded integers for given
#' total number of levels of a factor.
#'
#' @param x An integer greater than or equal to 2.
#' @return a vector of integers as
#'          coded levels for a factor
#'          with total number of
#'          levels as  \code{x}.
#' @export
#' @examples
#' # To generate 5 levels for a factor
#' gen.level(5)

gen.level <- function(x){

  if(x < 2 | x %% 1 != 0 ) {
    print("ERROR: x should be an integer greater than or equal to 2")
  } else {

  s <- x %/% 2
  l1 <- gl(s,1)
  l1 <- as.integer(l1)
  l2 <- -l1
  l2 <- rev(l2)

  t1 <- as.matrix(c(l2,0,l1))
  t2 <- as.matrix(c(l2,l1))

  if (x %% 2 == 1){
    return(t1)
  }else{
    return(t2)
  }
  }
}
