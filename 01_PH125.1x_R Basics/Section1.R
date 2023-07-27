#1.2
#Q1
#test
help(mean)
?mean

#Q2
log10(sqrt(64))
# > a function set inside another function so called a nested function

#Q3: The innermost function is evaluated first, and then evaluation proceeds outward.

#Assessment 1
#Using variables 1
#What is the sum of the first n positive integers? We can use the formula n(n + 1)/2 to quickly compute this quantity.
#Following instruction and writing code to in this case and don't delete a example code
n<- 100
(n*(n+1))/2   #the output: 5050

#Using variables 2
#What is the sum of the first 1000 positive integers?
#We can use the formula n(n + 1)/2 to quickly compute this quantity.
n<-1000
(n*(n+1))/2     # the output: 500500

#using variables 3
#Run the following code in the R console:
n<-1000
x<-seq(1,n)
sum(x)
#explain this code: the variable of x = sequence in rage 1 to n, but n =1000 so the function sum calculator of x

#Nested function calls 1
#following instructions then complete a code
# Compute log to the base 10 (log10) of the sqrt of 100. Do not use variables.
log10(sqrt(100))  #the output: 1

#Nested function calls 2
#Which of the following will always return the numeric value stored in x? You can try out examples and use the help system in the R console.
log(10ˆx)
log10(xˆ10)
log(exp(x))   [X]
exp(log(x, base = 2))




#1.3
#ex1 the state name, the abbreviation of the state name, the state's region and the state population and the total number for 2010

#ex2
# following instructions
library(dslabs)
data(murders)

names(murders)  #showing a name of column 

#ex3
#following a instruction
# Use the accessor to extract state abbreviations and assign it to a
a <- murders$abb
# Determine the class of a
class(a)

#ex4
#following a instruction
# Use square brackets to extract `abb` from `murders` and assign it to b
a <- murders$abb
b <- murders[["abb"]]
# Check if `a` and `b` are identical 
identical(a,b)

#ex5
# We can see the class of the region variable using class
class(murders$region)
# Determine the number of regions included in this variable 
length(levels(murders$region))    # if use levels(length(murders$region)) so this is a error syntax

#ex6
# Write one line of code to show the number of states per region
table(murders$region)



#Section1 Assessment
#Q1
a <- 2
b <- -1
c <- -4
x1 <- (-b + sqrt(b^2-4*a*c))/(2*a)
x2 <- (-b - sqrt(b^2-4*a*c))/(2*a)

#Q2
?log
log(1024, base = 4)

#Q3
library(dslabs)
data(movielens)

  #a
    str(movielens)
  #b, c, d are seeing a result on question a
    
#Q4
levels(movielens$genres)  #showing all genres
nlevels(movielens$genres) #showing level of genres

