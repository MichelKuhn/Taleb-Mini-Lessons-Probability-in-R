# Lesson 6: Fooled by metrics
# https://www.youtube.com/watch?v=fb921ZrM6h0
############################################

# Randomly created variables: Correlation around +/- 0.3 - not 0
x <- rnorm(18)
y <- rnorm(18)
cor(x, y)

# Gets better if you increase the sample size: Should be around +/- 0.03
x <- rnorm(180)
y <- rnorm(180)
cor(x, y)

# More variables, more possible correlation pairs and you can choose the "best" pair
a <- rnorm(18)
b <- rnorm(18)
c <- rnorm(18)
cor(a, b)
cor(a, c)
cor(b, c)

# Correlation is not linear: 0.1 is much closer to 0 than to 0.2

# n VS p: The more observations p you add, the more correlations you are going to find
# The sample size n helps you, but only by the square root, while the effect of p is quadratic
observations <- replicate(10, rnorm(10))
round(cor(observations), 2)

# One more observation p , more possibilities to pick correlations
observations_plus_one <- replicate(11, rnorm(10))
round(cor(observations_plus_one), 2)

# We doubled the number of samples n, still a lot of spurious correlations
# n is weaker than p, which leads to problems
observations_more_samples <- replicate(10, rnorm(20))
round(cor(observations_more_samples), 2)

