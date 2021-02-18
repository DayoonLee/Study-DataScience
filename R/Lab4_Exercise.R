# ex1
power <- function(inp){
  out <- inp^3
  print(out)
}
power(2)

# ex2
power2 <- function(x, a){
  out <- x^a
  print(out)
}
power2(3,8)

# ex3
power2(10, 3)
power2(8,17)
power2(131,3)

# ex4
power3 <- function(x, a){
  result <- x^a
  return(result)
}

# ex5
x <- 1:10
y <- power3(x,2)
plot(x,y)
title("Function x^2")

plot(x,log="y", xlab="x", ylab="log y", main="Function x^2")
plot(log="x",y, xlab="log x", ylab="y", main="Function x^2")

# ex6 ?????
plotpower <- function(a,b){
  xlist = list()
  ylist = list()
  for (i in a){
    x <- i
    append(xlist, x)
    y <- x^b
    append(ylist, y)
  }
  plot(xlist,ylist)
}
plotpower(1:10,3)

# ex7
sum2 <- function(n){
  result <- 0
  for(i in 1:n){
    result <- result + i^2
  }
  return(result)
}
sum2(3)

# ex8
sum3 <- function(n){
  result <- 0
  for (i in 1:n){
    result <- result + i^3
  }
  return(result)
}
sum3(3)
