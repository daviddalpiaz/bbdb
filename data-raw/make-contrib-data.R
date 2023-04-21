contrib_base_url = "https://github.com/chadwickbureau/baseballdatabank/raw/master/contrib/"
contrib_filenames = c(
  "AwardsManagers",
  "AwardsPlayers",
  "AwardsShareManagers",
  "AwardsSharePlayers",
  "CollegePlaying",
  "HallOfFame",
  "Salaries",
  "Schools"
)
contrib_urls = paste0(contrib_base_url, contrib_filenames, ".csv")
contrib = lapply(contrib_urls, read.csv)
contrib = lapply(contrib, function(x) {
  class(x) = c("tbl_df", "tbl", "data.table", "data.frame")
  return(x)
})
names(contrib) = contrib_filenames
with(contrib, {
  for (file in names(contrib)) {
    save(list = file, file = paste0("data/", file, ".rda"), compress = "xz")
  }
})
