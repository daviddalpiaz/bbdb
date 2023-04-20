#' Calculate batting average
#'
#' @param data A data frame with columns H (hits) and AB (at-bats)
#'
#' @return A data frame with the BA column
#' @export
calcBA = function(data) {
  # TODO: verify input data is valid
  data$BA = data$H / data$AB
  return(data)
}
