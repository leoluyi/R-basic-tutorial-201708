# 載入套件
library(dplyr)
library(readr)

# Load the Pokemon data into data.frame
pokemon <- read_csv("data/pokemons.csv")
View(pokemon)

# Find the heaviest one of 151 pokemons
pokemon %>% 
  arrange(desc(PokedexWeightKg)) %>% 
  select(Identifier, PokedexWeightKg) %>% 
  head(3) # 只看前 3 筆

# How many pokemons of which Type1 are "FIRE"
pokemon %>% 
  filter(Type1 == "FIRE") %>% 
  select(Identifier, Type1)

# Find the pokemon of which Type1 are "POISON" and has the largest BaseAttack value
pokemon %>%
  filter(Type1 == "POISON") %>%
  arrange(desc(BaseAttack)) %>%
  select(Identifier, Type1) %>%
  head(5)


