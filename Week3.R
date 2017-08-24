## For-loop

for (i in 1:9) {
  for (j in 1:9) {
    cat(i*j, "\t")
  }
  cat("\n")
}

cities <- c("New York", "Paris",
            "London", "Tokyo",
            "Rio de Janeiro", "Cape Town")

for(var in seq) {
  expr
}

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 
last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
# 15 < last <= 20
15 < last & last <= 20


# Variables related to your last day of recordings
medium <- "LinkedIn"
# medium <- "Facebook"
num_views <- 14

# Examine the if statement for medium: Examine the if statement that prints out "Showing LinkedIn information" if the medium variable equals "LinkedIn".
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views: Code an if statement that prints "You're popular!" to the console if the num_views variable exceeds 15.
num_views <- 200
if (num_views > 15) {
  cat("You're popular!!!\n")
  cat("num_views:", num_views)
}


# Functions
add_fun <- function(x, y) {
  return(x + y)
}
add_fun(x = 1, y = 3)

# mult_fun
mult_fun <- function(x, y) {
  return(x * y)
}
mult_fun(4, 6)




