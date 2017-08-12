# 安裝套件 -----------------------------------

pkg_list <- c("tidyverse")

pkg_new <- pkg_list[!(pkg_list %in% installed.packages()[,"Package"])]
if(length(pkg_new)) install.packages(pkg_new)
rm(pkg_new, pkg_list)

# 四則運算 ---------------------------------------

5 + 5
(5 + 5) / 2

# 求餘數
100 %% 2
234567 %% 31

# Vector (向量) ------------------------------------------------------

c(1, 2, 3, 4, 5)

c(
  c(1, 2, 3, 4, 5),
  c(6, 7, 8, 9, 10)
) # combine vectors

some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")
names(some_vector)
some_vector

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
poker_vector

# Assign days as names of roulette_vectors
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
roulette_vector

# Varable (變數) -----------------------------------------------------------------

my_var <- 4
my_apples <- 5

# Assign to my_oranges the value 6.
my_oranges <- 6

# Add the variables my_apples and my_oranges and have R simply print the result.
my_apples + my_oranges

# Assign the result of adding my_apples and my_oranges to a new variable my_fruit.
(my_fruit <- my_apples + my_oranges)

my_character <- "some text"
abc <- "42"; class(abc)
cba <- 42; class(cba)

abc + cba # Error
as.numeric(abc) + cba


# Vector selection --------------------------------------------------------

roulette_vector[1]
roulette_vector[2]
roulette_vector[3]
roulette_vector[c(1, 2)]
roulette_vector[c(3, 5)]
roulette_vector[c(3, 4, 5)]
roulette_vector[3:5]

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
poker_midweek <- poker_vector[3]


# Data.frame --------------------------------------------------------------

data(iris) # load the data
View(iris) # view in the pane
head(iris) # check first 5 rows
tail(iris) # check last 5 rows
str(iris) # look at data structure


# dplyr -------------------------------------------------------------------

library(dplyr) # 載入套件
library(magrittr) # 載入另一個套件

iris <- as_data_frame(iris)

# select(): 我只關心下面欄位…
iris %>% select(Sepal.Length)

# filter(): 篩選特定條件
iris %>% filter(Sepal.Length > 7.5) # Sepal.Length 大於 6.5

# arrange(): 根據某欄位的大小排序
iris %>% arrange(Petal.Length) %>% View
iris_new <- iris %>% arrange(Petal.Length) 
iris_new %>% View


# Assignment --------------------------------------------------------------

library(readr)
pokemons <- read_csv("~/Desktop/pokemons.csv")
View(pokemons)




