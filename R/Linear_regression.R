library(MASS)
library(ISLR)
fix(Boston)
? Boston
attach(Boston)

lm.fit <- lm(medv~lstat)
summary(lm.fit)
lm.fit #house prices tend to be lower in poorer neighbourhoods
lm.fit$coefficients

predict(lm.fit, data.frame(lstat=c(5,10,15)))
plot(lstat, medv)
abline(lm.fit)

lm.fit <- lm(medv~., data=Boston)
lm.fit