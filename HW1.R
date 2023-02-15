# Load data into a data frame
customers <- read.table(file = "customers.txt", header = TRUE)
# print data
customers$age

# 1. What is the 5th element in the original list of ages?
customers$age[5]

# 2. What is the fifth lowest age?
min(customers$age)

# 3. Extract the five lowest ages together
head(sort(customers$age), 5)

# 4. Get the five highest ages by first sorting them in decreasing order first.
tail(sort(customers$age), 5)

# 5. What is the average (mean) age?
mean(customers$age)

# 6. What is the standard deviation of ages?
sd(customers$age)

# 7. Make a new variable called age_diff, with the difference between each age and the mean age
age_diff <- c(abs(customers$age-mean(customers$age)))
age_diff

# 8.What is the average “difference between each age and the mean age”?
mean(age_diff)

# 9.Visualize the raw data as we did in class: 
# (a) histogram
hist(customers$age)
# (b) density plot
d <- density(customers$age)
plot(d, main="Density plot of customers' age")
# (c) boxplot + stripchart
stripchart(customers$age, main="boxplot + stripchart of customers' age", method = "stack")
