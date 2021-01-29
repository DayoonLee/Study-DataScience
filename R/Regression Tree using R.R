# Fitting Regression Trees
library(MASS)
library(tree)

#Create a training set
set.seed(1)
train = sample(1:nrow(Boston), nrow(Boston)/2)
tree.boston = tree(medv~., Boston, subset=train)
summary(tree.boston) # #of terminal nodes: 7

#plot the tree
plot(tree.boston)
text(tree.boston, pretty = 0)

#cross-validation
cv.boston = cv.tree(tree.boston)
cv.boston
plot(cv.boston$size, cv.boston$dev, type='b') # the most complex city is selected by cross-validation

#pruning
prune.boston = prune.tree(tree.boston, best=5)
plot(prune.boston)
text(prune.boston, pretty = 0)

#use the unpruned tree to make predictions on the test set
yhat = predict(tree.boston, newdata = Boston[-train,])
boston.test = Boston[-train, "medv"]
plot(yhat, boston.test)
abline(0,1)
mean((yhat - boston.test)^2) #testMSE
