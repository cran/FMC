## Main function of this package

#' Minimally Changed Run Sequences
#'
#' Generate minimally changed run sequences for a given asymmetrical
#' or symmetrical factorial design.
#'
#' @param z A vector of size 2 with entries integers greater than 1.
#' @return returns minimally changed run sequences for given
#' factorial setting as \code{v}.
#' @export
#' @examples
#' #' ## make a vector of factor levels
#' z <- c(2,3,4)
#' # To generate minimmaly changed run sequence
#' minimal.factorial(z)


minimal.factorial <- function(z){
    if(length(z) < 2){
    print("Use function gen'level")
  }else{
  if(((z %% 1) == 0) && (z >= 2)){
  n <- length(z)
  d <- gen.level(z[n])

  des <- vector("list", (n-1))
  des[[1]] <- shwet(d, z[(n-1)])
  if(n > 2) {
    for(i in 2:(n-1)){
      des[[i]] <- shwet(des[[(i-1)]], z[(n-i)])
    }
  }
  d1 <- des[[n-1]]
  d2 <- minimalRSD::num.ch(d1)
  list("run.sequence" =d1, "perFactorChange" = d2[[1]], "totalChange" = d2[[2]])
  }else{
  print("ERROR: z should have integers greater than or equal to 2")
}
  }
}
