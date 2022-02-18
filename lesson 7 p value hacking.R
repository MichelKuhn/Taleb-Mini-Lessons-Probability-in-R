# Lesson 7: p-Value Hacking
# https://www.youtube.com/watch?v=ncqcFNHmMoc
#############################################

# Small sample size: 
n=10
p_values <- sapply(1:100, FUN = function(x) t.test(rnorm(n), rnorm(n,mean = 1))$p.value)

#True Mean of p-value if you perform the experiment often enough (> 0.05)
mean(p_values)

#But most of the singular p-values are a lot smaller (< 0.05)
significant_p_values = which(p_values <0.05)
length(significant_p_values) / length(p_values) * 100 # percentage of "significant" p-values

#Histogram shows the distribution
hist(p_values, breaks = 20)

