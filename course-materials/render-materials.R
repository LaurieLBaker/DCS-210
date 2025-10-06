# load packages ----------------------------------------------------------------

library(fs)
library(tidyverse)
library(rmarkdown)
library(xaringan)
library(Tmisc)
#devtools::install_github("rstudio-education/dsbox")
library(dsbox)


# non-xaringan -----------------------------------------------------------------

rmds <- dir_info(recurse = 3, glob = "course-materials/lab-instructions/lab-01/lab-01-hello-r-2.Rmd") %>% 
  filter(!str_detect(path, "slides")) %>%
  pull(path)
walk(rmds, render)


rmds <- dir_info(recurse = 3, glob = "course-materials/hw-instructions/hw-02/hw-02-airbnb-edi.Rmd") %>% 
  filter(!str_detect(path, "slides")) %>%
  pull(path)
walk(rmds, render)

# xaringan ---------------------------------------------------------------------

xaringans <- dir_info(recurse = 3, glob = "course-materials/slides/u2-d11-data-classes/*.Rmd") %>% 
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  pull(path)
walk(xaringans, render)

xaringans <- dir_info(recurse = 3, glob = "course-materials/slides/u2-d07-single-df/*.Rmd") %>% 
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  pull(path)
walk(xaringans, render)

xaringans <- dir_info(recurse = 3, glob = "course-materials/slides/u4-d08-feature-engineering/*.Rmd") %>% 
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  pull(path)
walk(xaringans, render)