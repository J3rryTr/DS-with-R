#2.1
#Q1
x <- c(9, "b", 4)# testing this function, so the answer same as in question

#Data camp assessment 
# folowing instructions
#Q1
# Create a numeric vector to store the temperatures listed in the instructions into a vector named temp
# Make sure to follow the same order in the instructions
temp <- c(35, 88, 42, 84, 81, 30)

#Q2
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

#Q3
# Associate the temperature values with its corresponding city
names(temp)<- city

#Q4
# temperatures of the first three cities in the list:
temp[1:3]

#Q5
# Access the temperatures of Paris and San Juan
temp[c(3,5)]

#Q6
# Create a vector x of integers that starts at 12 and ends at 73.
x <- 12:73
# Determine the length of object x.
length(x)

#Q7
# Create a vector containing all the positive odd numbers smaller than 100.
# The numbers should be in ascending order
seq(1,99,2)

#Q8
# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length
length(seq(6,55,4/7))

#Q9
# Store the sequence in the object a
a <- seq(1,10,length.out = 100)
# Determine the class of a
class(a)

#Q10
"""
Integers
We have discussed the numeric class. We just saw that the seq function can generate objects of this class. For another example, type

class(seq(1, 10, 0.5))
into the console and note that the class is numeric. R has another type of vector we have not described, the integer class. You can create an integer by adding the letter L after a whole number. If you type

class(3L)
in the console, you see this is an integer and not a numeric. For most practical purposes, integers and numerics are indistinguishable. For example 3, the integer, minus 3 the numeric is 0. To see this type this in the console

3L - 3
The main difference is that integers occupy less space in the computer memory, so for big computations using integers can have a substantial impact.

Instructions
Does this change depending on what we store in an object? What is the class of the following object a <- seq(1, 10)?
"""
# Store the sequence in the object a
a <- seq(1,10)
# Determine the class of a
class(a)

#Q11
# Check the class of 1, assigned to the object a
class(1)
# Confirm the class of 1L is integer
class(1L)

#Q12
# Define the vector x
x <- c(1, 3, 5,"a")
# Note that the x is character vector
x
# Redefine `x` to typecast it to get an integer vector using `as.numeric`.
# You will get a warning but that is okay
x <- as.numeric(x)




#2.2
library(dslabs)
data(murders)
#Q1
# Access population values from the dataset and store it in pop
population <- murders$population
# Sort the object and save it in the same object 
pop <- sort(population)
# Report the smallest population size 
pop[1]

#Q2
pop <- order(murders$population)
pop[1]

#Q3
# Find the index of the smallest value for population
which.min(murders$population)

#Q4
# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)
states <- murders$state
states[i]

#Q5
# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)
# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)
# Define a variable states to be the state names 
states <- murders$state
# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)
# Create a data frame my_df with the state name and its rank
my_df <- data.frame(state <- states, rank <- ranks)

#Q4
states <- murders$state
ranks <- rank(murders$population)
ind <- order(murders$population)
my_df <- data.frame(state <- states[ind], rank <- ranks[ind])

#Q5
data(na_example)
str(na_example)
mean(na_example)
ind <-is.na(na_example)
sum(ind)

#Q6
# Note what we can do with the ! operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]

# Create the ind vector
library(dslabs)
data(na_example)
ind <- is.na(na_example)
# We saw that this gives an NA
mean(na_example)
# Compute the average, for entries of na_example that are not NA 
mean(na_example[!ind])




#2.3
#Q1
#convert temperature
temp <- (5/9) * (temp - 32)
#create data frame
city_temps <- data.frame(name <- city, temperature <- temp)

#Q2
x <- seq(1,100)
sum(1/x^2)

#Q3
murders_rate <- murders$total/(1e5*murders$population)
mean(murders_rate)



#Section2 Assessment
x <- c(2, 43, 27, 96, 18)
#Q1
sort(x)
order(x)
rank(x)

#Q2
min(x)
max(x)
which.max(x)
which.min(x)

#Q3
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
#using velocity = distance/time
# covert time to hours

