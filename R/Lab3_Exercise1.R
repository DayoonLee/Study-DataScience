library(MASS)
library(ISLR)
data("Auto")
fix(Auto)
attach(Auto)
names(Auto)

lm.fit <- lm(mpg~horsepower)
lm.fit

predict(lm.fit, data.frame(horsepower = 98))
plot(horsepower, mpg)
abline(lm.fit)