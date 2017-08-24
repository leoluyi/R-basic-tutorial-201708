library(dplyr)
pokemon <- readr::read_csv("https://github.com/leoluyi/R-basic-tutorial-201708/raw/gh-pages/data/pokemons.csv")
View(pokemon)

examine_mean_weight <- function(var, max_weight) {
  cat("Mean: ", mean(var), "\n")
  
  if (mean(var) > max_weight) {
    cat("Mean is greater than", max_weight)
  } else {
    cat("Mean is less (inclusive) than", max_weight)
  }
}

examine_mean_weight(pokemon$BaseStamina, max_weight = 200)
