# Scratch file with same example commands for working with the files in data.

library(tidyverse)
library(stringr)
library(fs)

files <- dir_ls("data")

x <- files %>%
  map_dfr(read_csv, .id = "source")
