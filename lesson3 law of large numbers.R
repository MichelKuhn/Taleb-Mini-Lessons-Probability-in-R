#Lesson 3: The law of large numbers
#https://www.youtube.com/watch?v=zyBXNIskQK0
############################################

#As the sample size increases, the mean gets closer to the "true" mean
#More variables mean more information
small_sample <- rnorm(10, 10, 5)
mean(small_sample)
middle_sample <- rnorm(100, 10, 5)
mean(middle_sample)
large_sample <- rnorm(1000, 10, 5)
mean(large_sample)

#Does not work for distribution like cauchy (does not have a mean)
#More variables do not mean more information
small_sample_cauchy <- rcauchy(10, 10, 5)
mean(small_sample_cauchy)
medium_sample_cauchy <- rcauchy(100, 10, 5)
mean(medium_sample_cauchy)
large_sample_cauchy <- rcauchy(1000, 10, 5)
mean(large_sample_cauchy)
