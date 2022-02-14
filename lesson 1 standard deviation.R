# Lesson 1: Standard Deviation vs Mean Absolute Deviation
# https://www.youtube.com/watch?v=iKJy2YpYPe8
#########################################################

# Package for Mean Absolute Deviation (madstat) function
install.packages("ie2misc")
library("ie2misc")

# In Mediokristan:
mediokristan <- rnorm(100000, mean=10, sd=2)

# Both are similar (~2)
sd(mediokristan)
madstat(mediokristan)

# SD/MAD should be around sqrt(pi/2) in Mediokristan
sd(mediokristan) / madstat(mediokristan)
sqrt(pi/2)

# In Extremistan:
extremistan <- c(replicate(999999, 0), 10^6)

sd(extremistan)
madstat(extremistan)

# SD/MAD is huuuuge
sd(extremistan) / madstat(extremistan)
