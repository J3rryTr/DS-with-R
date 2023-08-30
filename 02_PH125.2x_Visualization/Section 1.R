library(dslabs)
data(heights)
#1.1
#ex1 variable name
names(heights) 
#ex2 
head(heights)

#ex3
x <- heights$height
length(unique(x))

#ex4
tab <-table(x)

#ex5
tab <- heights$height
sum(tab<-1)




#1.2
#ex1
x <- heights$height[heights$sex == "Male"]
mean(x > 69& x <= 72)

#ex2
avg <- mean(x)
stdev <- sd(x)
pnorm(72, avg, stdev) - pnorm(69, avg, stdev)

#ex3
avg <- mean(x)
stdev <- sd(x)
exact <- mean(x > 79 & x <= 81)
approx <- pnorm(81, avg, stdev) - pnorm(79, avg, stdev)
#Report how many times bigger the actual proportion is compared to the approximation
exact/approx

#ex4
# use pnorm to calculate the proportion over 7 feet (7*12 inches)




#1.3
#ex1
library(dslabs)
data(heights)
male <- heights$height[heights$sex=="Male"]
female <- heights$height[heights$sex=="Female"]
length(male)
length(female)

#ex2
female_percentiles <- quantile(female, c(.1, .3, .5, .7, .9))
male_percentiles <- quantile(male, c(.1, .3, .5, .7, .9))
df <- data.frame(female = female_percentiles, male = male_percentiles)










