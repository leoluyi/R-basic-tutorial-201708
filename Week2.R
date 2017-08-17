# 載入套件
library(dplyr)
library(readr)

# Load the Pokemon data into data.frame
pokemon <- read_csv("data/pokemons.csv")
View(pokemon)

# Select a variable in data.frame
pokemon %>% select(Type1)
pokemon$Type1

pokemon %>% select(BaseDefense)
pokemon$BaseDefense

# Counting
pokemon$Type1 %>% table # 通常數文字(類別)型的變數才有意義

# Plotting in R ---------------------------------------

# Barplot: 文字(類別)型的變數
pokemon$Type1 %>% 
  table %>% 
  sort(decreasing = FALSE) %>% 
  barplot(las=1, horiz=TRUE)

# Pie chart
pokemon$Type1 %>% 
  table %>% 
  sort(decreasing = TRUE) %>% 
  pie(clockwise = TRUE, cex = 0.6)

# Histogram: The distribution of Pokemons' Weight
pokemon$PokedexWeightKg %>% 
  hist(breaks = 20, # number of bins
       col = "lightblue",
       prob = TRUE, # 顯示機率分佈
       xlab = "Pokemon Weight",
       main = "Historgram of Weight")

# Boxplot
pokemon$BaseCaptureRate %>% 
  boxplot(main='Base Capture Rate',
          xlab='Capture Rate',
          horizontal = TRUE)

# Scatter plot
plot(pokemon$BaseAttack, pokemon$BaseDefense)
abline(lm(BaseAttack ~ BaseDefense, 
          data = pokemon), col="red")
# 相關係數 correlation coefficient
cor(pokemon$BaseAttack, pokemon$BaseDefense)
#> 0.74898 正相關



