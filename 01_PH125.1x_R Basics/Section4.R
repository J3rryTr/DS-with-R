# 4.1
#Q1
ifelse(n > 10, n, “None”)
# None
# 13

#Q2
x <- 25
s <- 5
test <- function(x){
  s <- 1/x
}
# 0.04
# 25
# 5



# 4.2
#Q1 
test <- vector(length = 5)
for (i in 1:5){
  test[i] <- i^2
}

#Assessment 4
#Q1
x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}

#Q2
x <- c(TRUE, FALSE)
all(x)
all(!x)
any(x)

#Q3
library(dslabs)
data(murders)
new_names <- ifelse(nchar(murders$state) > 8, murders$abb, murders$state)

#Q4
sum_n <- function(n){
  y <- sum(seq(1:n))
  y
}
sum_n(5000)

#Q5
altman_plot <- function(x,y){
  plot(x+y, y-x)
}

#Q6
x <- 3
my_func <- function(y){
  x <- 5
  y
  print(x)
}
my_func(x)
print(x)

#Q7
compute_s_n <- function(n){
  x <- sum(seq(1:n)^2)
  sum(x)
}
compute_s_n(10)

#Q8
# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
s_n <- vector("numeric", 25)
n <- 25
for (i in 1:n) {
  x <- 1:i
  s_n[i] <- compute_s_n(i)
}

#Q9
# Define the function
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
# Define the vector of n
n <- 1:25
# Define the vector to store data
s_n <- vector("numeric", 25)
for(i in n){
  s_n[i] <- compute_s_n(i)
}
#  Create the plot 
plot(n, s_n)

#Q10
identical(s_n, (n*(n+1)*(2*n+1))/6)

