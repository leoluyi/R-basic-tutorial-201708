library(dplyr)
pokemon <- readr::read_csv("https://github.com/leoluyi/R-basic-tutorial-201708/raw/gh-pages/data/pokemons.csv")
View(pokemon)

# Plot the scatter plot of variables: PokedexHeightM and  PokedexWeightKg. 
# Is there any positive or negative relationship between those variables? 
# What’s the coorelation coefficient?

pokemon$PokedexHeightM
pokemon$PokedexWeightKg

# Scatter plot
plot(pokemon$PokedexHeightM, pokemon$PokedexWeightKg)
abline(lm(PokedexHeightM ~ PokedexWeightKg, data = pokemon), col="red")

# filter oulier   
pokemon %>%
  filter(PokedexHeightM < 3 & PokedexWeightKg < 200) %>% 
  lm(PokedexHeightM ~ PokedexWeightKg, data = .) %>% 
  abline(col = "blue")

# Correlation
cor(pokemon$PokedexHeightM, pokemon$PokedexWeightKg)


