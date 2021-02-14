library(MASS)
library(ISLR)
data("Boston")
fix(Boston)
names(Boston)
? Boston

lm.fit <- lm(crim~zn)
lm.fit

lm.fit <- lm(crim~indus) #proportion of non-retail business
lm.fit

lm.fit <- lm(crim~chas)
lm.fit

lm.fit <- lm(crim~nox) #nitrogen oxides concentration
lm.fit

lm.fit <- lm(crim~rm)
lm.fit

lm.fit <- lm(crim~age)
lm.fit

lm.fit <- lm(crim~dis)
lm.fit

lm.fit <- lm(crim~rad)
lm.fit

lm.fit <- lm(crim~tax)
lm.fit

lm.fit <- lm(crim~black)
lm.fit

lm.fit <- lm(crim~lstat)
lm.fit

lm.fit <- lm(crim~medv)
lm.fit

lm.fit <- lm(crim~ptratio)
lm.fit

#univariate regression coefficients
univcoef <- coef(lm(crim~zn))[2]
univcoef <- append(univcoef, coef(lm(crim~indus))[2])
univcoef <- append(univcoef, coef(lm(crim~chas))[2])
univcoef <- append(univcoef, coef(lm(crim~nox))[2])
univcoef <- append(univcoef, coef(lm(crim~rm))[2])
univcoef <- append(univcoef, coef(lm(crim~age))[2])
univcoef <- append(univcoef, coef(lm(crim~dis))[2])
univcoef <- append(univcoef, coef(lm(crim~rad))[2])
univcoef <- append(univcoef, coef(lm(crim~tax))[2])
univcoef <- append(univcoef, coef(lm(crim~ptratio))[2])
univcoef <- append(univcoef, coef(lm(crim~black))[2])
univcoef <- append(univcoef, coef(lm(crim~lstat))[2])
univcoef <- append(univcoef, coef(lm(crim~medv))[2])
univcoef

#multiple regression coefficients
lm.fit <- lm(crim~., data = Boston)
lm.fit
multicoef <- coef(lm.fit)[2:14]

plot(univcoef, multicoef)
