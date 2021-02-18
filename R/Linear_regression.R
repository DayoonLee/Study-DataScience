library(MASS)
library(ISLR)
fix(Boston)
? Boston

data(Boston)
attach(Boston)

lm.fit <- lm(medv~lstat)
summary(lm.fit)
lm.fit #house prices tend to be lower in poorer neighbourhoods
lm.fit$coefficients

predict(lm.fit, data.frame(lstat=c(5,10,15)))
plot(lstat, medv)
abline(lm.fit)
abline(lm.fit, lwd=3)
abline(lm.fit, lwd=3, col="red")
plot(lstat, medv, pch=20)
plot(lstat, medv, pch='+')
plot(1:20, 1:20, pch=1:20)

#multiple linear regression model
lm.fit <- lm(medv~lstat+age, data=Boston)
lm.fit

lm.fit <- lm(medv~., data = Boston)
lm.fit

# Qualitative variables
#ShelveLoc: qualitative variable (Bad, Medium, Good)
#R generates dummy variables automatically
fix(Carseats)
lm.fit <- lm(Sales~., data=Carseats)
lm.fit
attach(Carseats)
contrasts(ShelveLoc)