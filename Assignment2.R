library(dplyr)
pokemon <- readr::read_csv("https://github.com/leoluyi/R-basic-tutorial-201708/raw/gh-pages/data/pokemons.csv")
View(pokemon)

# Plot the scatter plot of variables: PokedexHeightM and  PokedexWeightKg. 
# Is there any positive or negative relationship between those variables? 
# What’s the coorelation coefficient?
