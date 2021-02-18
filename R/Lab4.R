# 1. Writing functions
LoadLibraries <- function(){
  library(ISLR)
  library(MASS)
  print("The libraries have been loaded")
}
LoadLibraries()

# 2. Plotting mathematical functions in R
curve(x*sin(x^2),-3,3)
x <- seq(-3,3,0.01)
y <- x*sin(x^2)
plot(x,y,type="l")

# 3. Writing scripts in R
norm <- function(x,y=0){
  squared.norm <- x^2+y^2
  return(sqrt(squared.norm))
}
norm(3,4)
norm(2)

# 4. Loops et al.
for (i in 1:4) print(i^2)

i = 0
while (i < 3){
  print(i^2)
  i = i+1
}

# 5. Normalization in R
library(ISLR)
data("Caravan")
fix(Caravan)
dim(Caravan)
attach(Caravan)
summary(Purchase)
348/(5474+348) # Only 6% of people purchased caravan insurance

standardized.x <- scale(Caravan[,-86]) # column 86: qualitative Purchase variable
var(Caravan[,1])
var(Caravan[,2])
var(standardized.x[,1])
var(standardized.x[,2])

library(class)
test <- 1:1000
train.X <- standardized.x[-test,]
test.X <- standardized.x[test,]
train.Y <- Purchase[-test]
test.Y <- Purchase[test]
set.seed(1)
knn.pred <- knn(train.X,test.X,train.Y,k=1)
mean(test.Y!=knn.pred) # error rate
mean(test.Y!="No")

table(knn.pred,test.Y)
9/(68+9) # 11.7%

knn.pred <- knn(train.X,test.X,train.Y,k=3)
table(knn.pred,test.Y)
5/26 # 19.2%

knn.pred <- knn(train.X,test.X,train.Y,k=5)
table(knn.pred,test.Y)
4/15 # 26.7%

glm.fit <- glm(Purchase~.,data=Caravan,family=binomial,subset=-test)
glm.probs <- predict(glm.fit,Caravan[test,],type="response")
glm.pred <- rep("No",1000)
glm.pred[glm.probs>0.5] <- "Yes"
table(glm.pred,test.Y)

glm.pred[glm.probs>0.25] <- "Yes"
table(glm.pred,test.Y)
11/33 # 33.3%
