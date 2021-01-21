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
