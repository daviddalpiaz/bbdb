#' Batting data
#'
#' Regular season batting data, mostly counting statistics, for all major league
#' hitters from `r min(Batting$yearID)` to `r max(Batting$yearID)`.
#'
#' This data was last updated on **`r Sys.Date()`**. The data was sourced from the
#' Chadwick Baseball Bureau [Baseball Databank](https://github.com/chadwickbureau/baseballdatabank).
#' The Baseball Databank is the source data for the Sean Lahman's Baseball Database
#' which is often accessed through the
#' [`Lahman` package](https://cran.r-project.org/web/packages/Lahman/index.html).
#'
#'
#' @format A table with `r nrow(Batting)` rows and `r ncol(Batting)` columns.
#' Technically an object with class `c("tbl_df", "tbl", "data.table", "data.frame")`
#' to accomodate base R, `tidyverse`, and `data.table` users. Each row of the data
#' represents a player-season-team combination.
#' \describe{
#'   \item{`playerID`}{`[character]` Lahman ID for MLB Player}
#'   \item{`yearID`}{`[integer]` Four digit year indicating a season}
#'   \item{`stint`}{`[integer]` Order of apperance on teams for the player within a season}
#' }
"Batting"
