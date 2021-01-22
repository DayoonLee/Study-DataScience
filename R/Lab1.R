#create a vector of numbers
x <- c(1,6,2)
y <- c(1,4,3)
length(x)
length(y)
x + y
x - y
x * y
x / y
x ^ y
x %% y #remainder
x %/% y #quotient

#matrix(data, nrow, ncol, byrow)
? matrix
x <- matrix(1:4, 2, 2)
x
x <- matrix(1:4, 2, 2, byrow=TRUE)
x

#matrix multiplication
y <- matrix(c(0,3,2,1), 2, 2)
x %*% y

#matrix multiplication (element-wise)
x * y
sqrt(x)
x^2

#random normal variables, rnorm(n)
x <- rnorm(50)
y <- x + rnorm(50, mean = 50, sd = 0.1)
cor(x,y)
? cor

#reproduce the exact same set of random numbers, set.seed()
set.seed(10)
y <- rnorm(100)
mean(y)
var(y)
sqrt(var(y))
sd(y)

#Graphics plot()
? plot
#plot(x, y, type, xlim, ylim, log, main, sub, xlab, ylab,...)
x <- rnorm(100)
y <- rnorm(100)
plot(x,y)
plot(x,y,main = "Plot of X vs Y",
     xlab = "this is the x-axis",
     ylab = "this is the y-axis")

#save the output of an R plot, jpeg, pdf ...
pdf("Figure.pdf")
plot(x,y, col="red")
dev.off()

#sequence of numbers
x <- seq(1,10)
x
x <- 1:10
x
x <- seq(-pi,pi,length=50)
plot(x,sin(x),main = "Sine Graph")

#Indexing Data
A <- matrix(1:16,4,4)
A
A[2,3] #index starts from 1, not 0
A[2:3, 3:4]
A[2,] #include all columns
A[,3] #include all rows
A[1:2,]
A[-c(1,3),] #exclude indicated index
A[-(1:3),]
A[-c(1,3),-c(1,3,4)]
dim(A)

#Loading Data
#For most analyses, the first step involves importing a data set into R
Auto <- read.table("Auto.data")
getwd() #current working location
setwd("C:\Users\user\Documents\GitHub\Study-DataScience\R") #set a new working locaation, in window it should be \\ instead of \
setwd("C:\\Users\\user\\Documents\\GitHub\\Study-DataScience\\R")
Auto <- read.table("Auto.data")
fix(Auto)
Auto <- read.table("Auto.data", header = TRUE) #first line of te file == variable names
fix(Auto)
Auto <- read.table("Auto.data", header = TRUE, na.strings = "?")
fix(Auto)
Auto <- na.omit(Auto) #remove missing values
dim(Auto)

names(Auto) #check variable names

#Additional Graphical & Numerical Summaries
plot(Auto$cylinders, Auto$mpg) #Variables in Auto file
attach(Auto)
plot(cylinders, mpg)
cylinders <- as.factor(cylinders)
? as.factor #factor: encode a vector as a factor or category
plot(cylinders, mpg)
plot(cylinders, mpg, col="red")
plot(cylinders, mpg, col="blue", varwidth=T)
plot(cylinders, mpg, col="green", varwidth=T, horizontal=T)
plot(cylinders, mpg, col="yellow", varwidth=T, xlab="cylinders", ylab="MPG")

#hist(): histogram
hist(mpg)
hist(mpg, col=3) #col= 1:black, 2:red, 3:green, 4:blue...
hist(mpg, col=5, breaks = 15)
? hist
hist(mpg, col=4, breaks = seq(5,50,by=3)) #breaks range

pairs(~mpg + displacement + horsepower + weight + acceleration, Auto)

plot(horsepower,mpg)
identify(horsepower,mpg,name)

#summary
summary(Auto)
summary(mpg)
summary(displacement)

#Exercise
redAuto <- Auto[-c(10:85),]
fix(redAuto)

sapply(Auto[,1:8], range)
sapply(redAuto[,1:8], range)
sapply(redAuto[,1:8], mean)
sapply(redAuto[,1:8], sd)