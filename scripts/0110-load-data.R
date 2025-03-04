# Load equipement list and update if needed

path_equip_new_graphiti <- fs::path_expand("~/Projects/repo/new_graphiti/assets/data/equipment.csv")
path_equip_repo <- fs::path_expand("~/Projects/repo/hsp/data/equipment.csv")

if (params$update_equip) {
  fs::file_copy(path_equip_new_graphiti, path_equip_repo, overwrite = T)
}

equipment <- readr::read_csv(path_equip_repo)
