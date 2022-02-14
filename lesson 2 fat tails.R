#Lesson 2: Fat Tails
#https://www.youtube.com/watch?v=t7Fr6iGhmBM
############################################

#The mean is one, only from one observation!
extremistan <- c(replicate(999999, 0), 10^6)
mean(extremistan)

#Fatten the tail of a gaussian: More events in the middle!
#Both have the same mean, but the extreme event is rarer (and deadlier) in the second one
fat_tail <- c(rnorm(99, mean=10, sd=2), 10^3)
fatter_tail <- c(rnorm(999, mean=10, sd=2), 10^4)
mean(fat_tail)
mean(fatter_tail)
