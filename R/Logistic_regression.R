library(MASS)
library(ISLR)
fix(Smarket)
names(Smarket)
? Smarket
summary(Smarket)

#Predict Direction using Lag1 to Lag5 and Volume
attach(Smarket)
glm.fit <- glm(Direction~Lag1+Lag2+Lag3+Lag4+Lag5+Volume, data=Smarket, family = binomial)
glm.fit

glm.probs <- predict(glm.fit, type="response")
glm.probs[1:6] # Probability of the market going up
contrasts(Direction) # Up: 1 / Down: 0

#class labels
glm.pred <- rep("Down",1250)
glm.pred[glm.probs > .5] <- "Up"
table(glm.pred, Direction)
(507+145)/1250
mean(glm.pred==Direction)

train <- (Year<2005)
Smarket.2005 <- Smarket[!train,]
dim(Smarket.2005)
Direction.2005 <- Direction[!train]

glm.fit <- glm(Direction~Lag1+Lag2+Lag3+Lag4+Lag5+Volume, data=Smarket, family = binomial, subset=train)
glm.probs <- predict(glm.fit, Smarket.2005, type="response")

glm.pred <- rep("Down", 252)
glm.pred[glm.probs > 0.5] <- "Up"
table(glm.pred, Direction.2005)
mean(glm.pred == Direction.2005) #Accuracy = 48%
mean(glm.pred != Direction.2005) #Test error rate = 52%

glm.fit <- glm(Direction~Lag1+Lag2, data=Smarket, family=binomial, subset=train)
glm.probs <- predict(glm.fit, Smarket.2005, type="response")
glm.pred <- rep("Down", 252)
glm.pred[glm.probs > 0.5] <- "Up"
table(glm.pred, Direction.2005)
mean(glm.pred == Direction.2005) #Accuracy = 56%
mean(glm.pred != Direction.2005) #Test error rate = 44%

predict(glm.fit, newdata = data.frame(Lag1=c(1.2, 1.5), Lag2=c(1.5, -0.8)), type = "response")