# Lesson 5: Correlation
# https://www.youtube.com/watch?v=o9Ac85xdjE4
#############################################

# Package for Mutual Information Computation
install.packages("infotheo")
library("infotheo")

# Values from a simple function: Correlation Works
function_x <- c(rbinom(50, 50, 0.5)) #rbinom to gest discrete values
function_y <- c()
for (x in function_x) {
  function_y[length(function_y) + 1] <- -2 + x * 1.5 + rnorm(1, 2, 2) #rnorm() for noise
}
plot(function_x, function_y)
cor(function_x, function_y)

# Different "regimes" cancel each other out, correlation is 0 for these two:
pyramid_x <- c(-4, -3, -2, -1, 0, 1, 2, 3, 4)
pyramid_y <- c(0, 1, 2, 3, 4, 3, 2, 1, 0)
plot(pyramid_x, pyramid_y)
cor(pyramid_x, pyramid_y)

#Mutual Information Computation to the rescue:
mutinformation(pyramid_x, pyramid_y)

