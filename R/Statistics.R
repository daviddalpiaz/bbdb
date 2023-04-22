#' Calculate batting average and add to data frame
#'
#' @param data A data frame with columns H (hits) and AB (at-bats)
#'
#' @return The input data frame with added BA column
#' @export
#'
#' @examples
#' calcBA(Batting)
calcBA = function(data) {
  if (!is.data.frame(data) || with(data, {!exists("H") || !exists("AB")})) {
    stop("data must be a data frame with columns for H (hits) and AB (at-bats)")
  }
  # TODO: what if AB is 0? currently NaN? should it be NA?
  data$BA = data$H / data$AB
  return(data)
}

# TODO: instead of single functions with df as input could instead have a function
# for each statistic that is called within an overall function that adds a bunch of
# computed statistics. Could probably provide everything list on bref
