# Lesson 4: Central Limit Theorem
# https://www.youtube.com/watch?v=bfM9efdStN8
#############################################

# Package for Pareto-Distribution
install.packages("EnvStats")
library("EnvStats")

# Sum of samples from binomial (or any)  distribution approaches normal distribution with enough samples added
samples <- replicate(8, rbinom(100, 1, 0.5))
hist(samples[, 1])
hist(rowSums(cbind(samples[, 1], samples[, 2])))
hist(rowSums(cbind(samples[, 1], samples[, 2], samples[, 3], samples[, 4])))
hist(rowSums(cbind(samples[, 1], samples[, 2], samples[, 3], samples[, 4], samples[, 5], samples[, 6])))
hist(rowSums(cbind(samples[, 1], samples[, 2], samples[, 3], samples[, 4], samples[, 5], samples[, 6], samples[, 7], samples[, 8])))

#Works with fat tailed distributions too, but muuuuch slower
pareto_samples = replicate(8, rpareto(100, 1))
hist(pareto_samples)
hist(rowSums(cbind(pareto_samples[, 1], pareto_samples[, 2])))
hist(rowSums(cbind(pareto_samples[, 1], pareto_samples[, 2], pareto_samples[, 3], pareto_samples[, 4])))
hist(rowSums(cbind(pareto_samples[, 1], pareto_samples[, 2], pareto_samples[, 3], pareto_samples[, 4], pareto_samples[, 5], pareto_samples[, 6])))
hist(rowSums(cbind(pareto_samples[, 1], pareto_samples[, 2], pareto_samples[, 3], pareto_samples[, 4], pareto_samples[, 5], pareto_samples[, 6], pareto_samples[, 7], pareto_samples[, 8])))
