batting_url = "https://raw.githubusercontent.com/chadwickbureau/baseballdatabank/master/core/Batting.csv"
Batting = read.csv(batting_url)
usethis::use_data(Batting, overwrite = TRUE)
