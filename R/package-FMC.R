#' FMC: A package for constructing minimallly changed run sequences
#' in factorial experiments
#'
#' The FMC package can be used to construct run sequences with minimum
#' changes in factor levels. Experimenter can save time and resources by
#' minimizing the number of changes in levels of individual facor
#' and therefore the total number of changes. The package provides the function minimal.factorial and gen.level.
#' This technique can be employed to any symmetric or asymmetric
#' factorial combination.
#'
#'
#'
#' @section FMC functions:
#' gen.level: Generate integers representing the levels of a factor. \cr
#' minimal.factorial: Generate minimally changed runs for asymmetric
#' and symmetric factorial combinations.. \cr
#'
#' @docType package
#'
#' @name FMC
#'
#' @details In Design of Experiments (DOE) theory, levels of a factor
#' can be represented as integers e.g. -1 for low, 0 for medium and
#' 1 for high. This representation helps in studying factors with high
#' number of levels. The function "gen.level()" provides the same
#' representation for any factor with given number of total levels.
#' User is expected to enter a vector of total number of levels for
#' each factor to be considered in the experiment. Function
#' "minimal.factorial()" provides the required run sequences for the
#' input vector of level totals. The output also gives the number
#' of changes of each factor along with total number of changes
#' in the run sequence.
#'
#' @references Arpan Bhowmik, Eldho Varghese, Seema Jaggi and Cini
#' Varghese(2016).Minimally changed run sequences in factorial
#' experiments. Communications in Statistics - Theory and Methods,
#' DOI: 10.1080/03610926.2016.1152490. \cr
#' Arpan Bhowmik, Eldho Varghese, Seema Jaggi and Cini
#' Varghese (2015). Factorial Experiments with Minimum Changes
#' in Run Sequences. Journal of the Indian Society of
#' Agricultural Statistics. 69(3), 243-255.
#'
#'
#' @author Shwetank Lall \email{shwetanklall@gmail.com}\cr
#'         Arpan Bhowmik \email{arpan.stat@gmail.com} \cr
#'          Eldho Varghese \email{eldhoiasri@gmail.com} \cr
#'          Seema Jaggi  \email{seema@iasri.res.in} \cr
#'          Cini Varghese \email{cini_v@iasri.res.in } \cr
NULL
