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
names(contrib) = contrib_filenames
with(contrib, {
  save(list = names(contrib), file = "data/contrib.RData", compress = "xz")
})
