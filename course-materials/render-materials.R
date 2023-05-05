# load packages ----------------------------------------------------------------

library(fs)
library(tidyverse)
library(rmarkdown)
library(xaringan)
library(Tmisc)
# devtools::install_github("rstudio-education/dsbox")


# non-xaringan -----------------------------------------------------------------

rmds <- dir_info(recurse = 3, glob = "course-materials/hw-instructions/hw-08/*.Rmd") %>% 
  filter(!str_detect(path, "slides")) %>%
  pull(path)
walk(rmds, render)

# xaringan ---------------------------------------------------------------------


xaringans <- dir_info(recurse = 3, glob = "course-materials/slides/u4-d09-cross-validation/*.Rmd") %>% 
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  pull(path)
walk(xaringans, render)

xaringans <- dir_info(recurse = 3, glob = "course-materials/slides/u4-d10-quantify-uncertainty/*.Rmd") %>% 
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  pull(path)
walk(xaringans, render)

xaringans <- dir_info(recurse = 3, glob = "course-materials/slides/u4-d08-feature-engineering/*.Rmd") %>% 
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  pull(path)
walk(xaringans, render)