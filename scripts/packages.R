# install.packages('pak')

pkgs_cran <- c(
  'tidyverse',
  'knitr',
  'bookdown',
  'rmarkdown',
  'pagedown'
)

pkgs_gh <- c(
  "newgraphenvironment/ngr",
  "newgraphenvironment/fpr",
  "haozhu233/kableExtra@a9c509a" ## 2024 update, this prevents black text in dark mode
)

pkgs_all <- c(pkgs_cran,
              pkgs_gh)


# install or upgrade all the packages with pak
lapply(pkgs_all,
       pak::pkg_install, dependencies = TRUE, ask = FALSE)

# load all the packages
pkgs_ld <- c(pkgs_cran,
             basename(pkgs_gh))

lapply(pkgs_ld,
       require,
       character.only = TRUE)
