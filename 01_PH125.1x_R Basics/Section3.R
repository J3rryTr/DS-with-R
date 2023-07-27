#3.1
#Q1 
#which(murders$state == "massachusetts")
#c("massachusetts")%in% murders$state
#which(murders$state = "massachusetts")

#Q2 !ind %in% murders$state




# assessment 3.1
library(dslabs)
data(murders)

#Q1
murder_rate <- murders$total/murders$population*100000
low <- murder_rate <1

#Q2
which(low)

#Q3
murders$state[low]

#Q4
# create a vector ind for states in the Northeast and with murder rates lower than 1. 
ind <- low & murders$region == "Northeast"
# Names of states in `ind` 
murders$state[ind]

#Q5
avg <- mean(murder_rate)
sum(murder_rate<avg)

#Q6
murders$abb
# Store the 3 abbreviations in a vector called `abbs` (remember that they are character vectors and need quotes)
abbs <- c("AL", "AK", "AZ")
# Match the abbs to the murders$abb and store in ind
ind <- match(abbs,murders$abb) 
# Print state names from ind
murders$state[ind]

#Q7
# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c('AL', 'AK', 'AZ', 'AR', 'LM')
# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs %in% murders$abb

#Q8
# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 
# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in `ind`
ind <- which(!abbs%in%murders$abb)
# Names of abbreviations in `ind`
abbs[ind]




#3.2



# assessment 3.2
library(dslabs)
data(murders)
library(dplyr)
#Q1
# Redefine murders so that it includes a column named rate with the per 100,000 murder rates
murders <- mutate(murders, rate = total/population*100000)

#Q2
murders <- mutate(murders, rank <- rank(-rate))

#Q3
select(murders,state,abb)

#Q4
filter(murders, rank <= 5)

#Q5
murders$region
# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")
# Use nrow() to calculate the number of rows
nrow(no_south)

#Q6
# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c("Northeast", "West"))
# Number of states (rows) in this category 
nrow(murders_nw)

#Q7
# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))
# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)

#Q8
filter(murders, region %in% c("Northeast", "West") & rate < 1) %>% select(state, rate, rank) 

#Q9
my_states <- murders %>% mutate(rate = total / population * 100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast", "West") & rate < 1) %>% select(state, rate, rank)




#3.3
#Q1
library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)
# Transform population (not population in millions) using the log10 transformation and save to object log10_population
log10_population <- log10(murders$population)
# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log10(total_gun_murders)
# Create a scatterplot with the log scale transformed population and murders 
plot(log10_population, log10_total_gun_murders)

#Q2
hist(population_in_millions)

#Q3
boxplot(population~region,data=murders)




#3.4
library(tidyverse)
library(NHANES)
data(NHANES)
library(dslabs)
data(na_example)
mean(na_example, na.rm = TRUE)
sd(na_example, na.rm = TRUE)

#Q1
tab <- NHANES %>% filter(AgeDecade == "20-29"& Gender=="female")

#Q2
ref <- NHANES %>% filter(AgeDecade == " 20-29" & Gender == "female") %>% 
  summarise(average <- mean(BPSysAve, na.rm = TRUE), standard_deviation <- sd(BPSysAve, na.rm = TRUE))

#Q3 the modify
ref_avg <- ref %>% .$average

#Q4
NHANES %>%
  filter(AgeDecade == " 20-29"  & Gender == "female") %>% 
  summarize(minbp <- min(BPSysAve, na.rm = TRUE), maxbp <- max(BPSysAve, na.rm = TRUE))

#Q5
NHANES %>%
  filter(Gender == "female") %>% group_by(AgeDecade) %>% 
  summarize(average = mean(BPSysAve, na.rm = TRUE), standard_deviation = sd(BPSysAve, na.rm = TRUE))

#Q6
NHANES %>%
  filter(Gender == "male") %>% group_by(AgeDecade) %>% 
  summarize(average = mean(BPSysAve, na.rm = TRUE), standard_deviation = sd(BPSysAve, na.rm = TRUE))

#Q7
NHANES %>%
 group_by(AgeDecade, Gender) %>% 
  summarize(average = mean(BPSysAve, na.rm = TRUE), standard_deviation = sd(BPSysAve, na.rm = TRUE))

#Q8
NHANES %>% group_by(Race1) %>%
  filter( Gender == "male"& AgeDecade == "40-49") %>%
  summarize(average = mean(BPSysAve, na.rm = TRUE), standard_deviation = sd(BPSysAve, na.rm = TRUE)) %>%
  arrange(average)

NHANES  %>% group_by( Race1 ) %>% 
  filter( Gender == "male" & AgeDecade == " 40-49" ) %>% 
  summarize( average = mean(BPSysAve, na.rm = TRUE), standard_deviation = sd(BPSysAve, na.rm = TRUE) ) %>%
  arrange(average) 




# 3.5
library(dplyr)
library(dslabs)
data(heights)
options(digits = 3)
#Q1
ind <- heights$height > mean(heights$height)
sum(ind)

#Q2
females <- heights$sex == "Female"
sum(ind & females)

#Q3
head(heights)
summary(heights)
mean(females)

#Q4
#a
min(heights$height)
#b 
match(50, heights$height)
#c
heights$sex[1032]

#Q5
#a
max(heights$height)
#b
x <- 50:82.7
#c
sum(!(x %in% heights$height))

#Q6
heights2 <- mutate(heights, ht_cm = height*2.54)
head(heights2)
#a
heights2$ht_cm[18]
#b
mean(heights2$ht_cm)

#Q7
#a
sum(heights2$sex == "Female")
# other solution
females2 <- filter(heights2, sex == "Female") 
nrow(females2)
#b
#heights2 %>% filter(height, sex == "Female") %>% summarize(avg = mean(ht_cm, na.rm = TRUE))
mean(females2$ht_cm)

#Q8
library(dslabs)
data(olive)
head(olive)
plot(olive$palmitic, olive$palmitoleic)
#Q9
hist(olive$eicosenoic)
#Q10
hist(olive$palmitic)
