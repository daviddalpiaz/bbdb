core_base_url = "https://github.com/chadwickbureau/baseballdatabank/raw/master/core/"
core_filenames = c(
  "AllstarFull",
  "Appearances",
  "Batting",
  "BattingPost",
  "Fielding",
  "FieldingOF",
  "FieldingOFsplit",
  "FieldingPost",
  "HomeGames",
  "Managers",
  "ManagersHalf",
  "Parks",
  "People",
  "Pitching",
  "PitchingPost",
  "SeriesPost",
  "Teams",
  "TeamsFranchises",
  "TeamsHalf"
)
core_urls = paste0(core_base_url, core_filenames, ".csv")
core = lapply(core_urls, read.csv)
core = lapply(core, function(x) {
  class(x) = c("tbl_df", "tbl", "data.table", "data.frame")
  return(x)
})
names(core) = core_filenames
with(core, {
  for (file in names(core)) {
    save(list = file, file = paste0("data/", file, ".rda"), compress = "xz")
  }
})
