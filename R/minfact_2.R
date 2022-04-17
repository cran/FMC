## generate minimally changed run sequence
## for two factors

#' Minimally Changed BBD
#'
#' Generate Box Behnken design (BBD) with minimum level changes
#' in the run sequence.
#'
#' @param x A matrix of factor level combinations
#' @param y total number of levels of new factor
#' @return returns a matrix of minimally changed run sequence
#'
#' @keywords internal

shwet <- function(x,y){
  xc <- vector("list", y)
  xc[[1]] <- x
  for(i in 2:y){
    xc[[i]] <- apply(xc[[(i-1)]], 2, rev)
  }
  xc1 <- do.call(rbind, xc)

  z <- gen.level(y)
  z1 <- rep(z, each=nrow(x))

  out <- cbind(z1, xc1)
  colnames(out) <- NULL
  return(out)
}

