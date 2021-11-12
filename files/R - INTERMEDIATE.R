# BUILT IN FUNCTIONS

# Print a sequence of numbers
25:35
seq(25,35)

# Mean of a set of numbers
mean(25:35)

# Sum of a set of numbers
sum(25:35)

#############################################################################################

# USER DEFINED FUNCTION - 1
add_two_numbers <- function(a,b)
  {
  c <- a+b
  return(c)
  }

add_two_numbers(1,2)

result <- add_two_numbers(1,2)
result

# USER DEFINED FUNCTION - 2 (No arguments)

print_hello <- function(){
  print("Hello")
  print("Function successfully called")
  }
  
print_hello()

#############################################################################################

#                             DATA VISUALIZATION

#############################################################################################

library(datasets)
data("mtcars")
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- as.factor(mtcars$am)
mtcars$gear <- as.factor(mtcars$gear)
mtcars$carb <- as.factor(mtcars$carb)

# Replacing values of "0" & "1" with "Automatic" & "Manual" 
# in "am" column
levels(mtcars$am) <- c(levels(mtcars$am), "Automatic", "Manual")
mtcars$am[mtcars$am == 0] <- "Automatic"
mtcars$am[mtcars$am == 1] <- "Manual"
mtcars$am <- factor(mtcars$am)

str(mtcars)

# By default R performs a Barplot for Factor variables
plot(mtcars$am)

# By default R performs a Scatterplot for Numeric variables
plot(mtcars$disp)

#############################################################################################

# BARPLOT

# Single Factor
tab <- table(mtcars$am)
tab

barplot(tab)

# Same color for all bars
barplot(tab, main = "Auto vs Manual", 
        xlab = "Transmission type", ylab = "Count",
        col="blue")

# Multiple colors
barplot(tab, main = "Auto vs Manual", 
        xlab = "Transmission type", ylab = "Count",
        col=c("red","blue"))


# Bars repeat colors
tab <- table(mtcars$carb)
tab

barplot(tab, main = "Auto vs Manual", 
        xlab = "Transmission type", ylab = "Count",
        col=c("red","blue","green"))

# Two factors
tab <- table(mtcars$am,mtcars$cyl)
tab

barplot(tab, col = c("red","blue"), 
        main = "Auto vs Manual for each Cylinder",
        xlab = "Cylinder", ylab ="Count")

legend("top", legend = c("Automatic", "Manual"), fill = c("red", "blue"))

#############################################################################################

# HISTOGRAM

hist(mtcars$hp, main = "Horse-Power Distribution",
     xlab = "Horsepower", ylab = "Frequency", col = "yellow")

#############################################################################################

# PIE CHART
pie(table(mtcars$am), col=c("yellow","green"), 
    main = "Transmission Types")

#############################################################################################

# BOX PLOT

boxplot(mtcars$hp, main = "Horse-Power Distribution",
        ylab = "Horsepower", col = "yellow")

boxplot(mtcars$hp ~ mtcars$am, main = "Horse-Power for Car Type",
        xlab = "Car Type", ylab = "Horsepower", 
        col = c("green", "orange"))

#############################################################################################

# SCATTER PLOT
plot(mtcars$hp, mtcars$mpg, main = "Mileage vs Horse Power",
     xlab = "Horse Power", ylab = "Mileage", col="steelblue", pch=16)

#############################################################################################

#                             HYPOTHESIS TESTING

#############################################################################################

# T-test

# Storing the mileage of Automatic & Manual transmission cars in individual vectors
Auto_mileage <- mtcars[mtcars$am == "Automatic","mpg"]
Manual_mileage <- mtcars[mtcars$am == "Manual","mpg"]


# T-test to check if transmission type has an effect on the car's mileage
t.test(Auto_mileage, Manual_mileage)

t.test(Auto_mileage, Manual_mileage, alternative = "less")

t.test(Auto_mileage, Manual_mileage, alternative = "greater")


# T-test to check if transmission type has an effect on the car's horsepower
Auto_hp <- mtcars[mtcars$am == "Automatic","hp"]
Manual_hp <- mtcars[mtcars$am == "Manual","hp"]
t.test(Auto_hp, Manual_hp)

#############################################################################################

# ANOVA (Analysis of Variance)

# Test performed to see if mileage varies based on number of cylinders 
mileage.aov <- aov(mpg~cyl, data=mtcars)

# The below summary provides a single result indicating if mileage
# varies or not
summary(mileage.aov)

# The TukeyHSD function provides results to indicate if mileage varies
# between each type of cylinder 
TukeyHSD(mileage.aov)

# Based on p-value there seems the be a significant difference 
# in mileage between Cars with:
# 6 & 4 cylinders
# 8 & 4 cylinders
# 6 & 8 cylinders


# Test performed to see if horse power varies based on number of carburetors 
horsepower.aov <- aov(hp~carb, data=mtcars)
summary(horsepower.aov)
TukeyHSD(horsepower.aov)

# Based on p-value there seems the be a significant difference 
# in horse power between Cars with:
# 4 & 1 carburetors
# 8 & 1 carburetors
# 4 & 2 carburetors
# 8 & 2 carburetors

#############################################################################################

# CORRELATION

# Checking if a relationship exists between mileage and horsepower
cor.test(mtcars$mpg, mtcars$hp)

# Using options command to expand exponent into decimal form
options(scipen = 99)
cor.test(mtcars$mpg, mtcars$hp)

# Checking if a relationship exists between quarter mile time
# and car weight
cor.test(mtcars$qsec, mtcars$wt)


#############################################################################################
#############################################################################################
#############################################################################################
