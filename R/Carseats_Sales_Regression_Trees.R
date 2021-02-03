library(tree)
library(ISLR)
data("Carseats")
fix(Carseats)
attach(Carseats)
names(Carseats)
dim(Carseats)

set.seed(1)
train <- sample(1:nrow(Carseats), 200)
test <- Carseats[-train,"Sales"]
train
test

tree.carseats <- tree(Sales~., Carseats, subset = train)
summary(tree.carseats)
tree.carseats

plot(tree.carseats)
text(tree.carseats, pretty = 0)

yhat <- predict(tree.carseats, Carseats[-train,])
plot(yhat, test)
abline(0,1)
mean((yhat-test)^2) #test set MSE = 4.78

#cross-validation
cv.carseats <- cv.tree(tree.carseats)
cv.carseats 
plot(cv.carseats$size, cv.carseats$dev, type = 'b') #best size = 5

#pruning
prune.carseats <- prune.tree(tree.carseats, best = 5)
plot(prune.carseats)
text(prune.carseats, pretty = 0)
summary(prune.carseats)
prune.carseats

prune.yhat <- predict(prune.carseats, Carseats[-train,])
length(prune.yhat)
plot(prune.yhat, test)
abline(0,1)
mean((prune.yhat - test)^2)