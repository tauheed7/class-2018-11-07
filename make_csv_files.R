# The purpose of this script is to make the example csv files we will work with.
# Although I could do all this without the fs library, it would be much harder.

library(tidyverse)
library(fs)


dir_create("data")

for(i in 1:500){
  rows <- sample(100, 1)
  x <- data_frame(a = 1:rows, b = rnorm(rows), c = sample(letters, rows, replace = TRUE))
  write_csv(x, path = paste0("data/", "ex_", sample.int(1000, 1), "_", sample(LETTERS[1:10], 1), ".csv"))
}
