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
names(core) = core_filenames
with(core, {
  save(list = names(core), file = "data/core.RData", compress = "xz")
})
