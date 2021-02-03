#Classification Trees
library(tree)
library(ISLR)
data("Carseats")
names(Carseats)
?Carseats #sales of car seats at 400 different stores
fix(Carseats)

attach(Carseats)

High <- ifelse(Sales<=8, "No", "Yes")
High <- as.factor(High)
Carseats <- data.frame(Carseats, High)

#classification tree for predicting High using all other variables, apart from High itself and Sales
tree.carseats <- tree(High~CompPrice+Income+Advertising+Population+Price+ShelveLoc+Age+Education+Urban+US, Carseats)
tree.carseats <- tree(High~.-Sales,Carseats)

summary(tree.carseats) #training error rate = 9%

plot(tree.carseats)
text(tree.carseats, pretty=0)

tree.carseats

set.seed(2)
train <- sample(1:nrow(Carseats), 200)
Carseats.test <- Carseats[-train,]
High.test <- High[-train]

tree.carseats <- tree(High~.-Sales, Carseats, subset = train)
tree.pred <- predict(tree.carseats, Carseats.test, type = "class")
table(tree.pred, High.test)
(104+50) / 200

set.seed(3)
cv.carseats <- cv.tree(tree.carseats, FUN = prune.misclass)
names(cv.carseats)
cv.carseats

par(mfrow=c(1,2))
plot(cv.carseats$size, cv.carseats$dev, type='b')
plot(cv.carseats$k, cv.carseats$dev, type='b')

prune.carseats <- prune.misclass(tree.carseats, best=8)
plot(prune.carseats)
text(prune.carseats, pretty=0)
plot(tree.carseats)

tree.pred <- predict(prune.carseats, Carseats.test, type = "class")
table(tree.pred, High.test)
(89+62) / 200