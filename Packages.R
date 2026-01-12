library(knitr)
pkg <- c(
  "base",
  "stats",
  "magrittr",
  "dplyr",
  "tidyr",
  "GGally",
  "ppcor",
  "supernova",
  "AICcmodavg",
  "janitor",
  "pheatmap",
  "rcompanion",
  "broom",
  "lmtest",
  "caTools",
  "caret",
  "pscl",
  "car",
  "pROC",
  "knitr",
  "nycOpenDat")

write_bib(pkg,"packages.bib")
