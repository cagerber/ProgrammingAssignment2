## ======================================================================================
## Coursera - Programming in R (Programming Assignment 2)
## Test script
## ======================================================================================

setwd("C:\\tmp\\rprog-016\\ProgrammingAssignment2")
source("cachematrix.R")

m <- rbind(c(1, -1/4), c(-1/4, 1))  
sm <- makeCacheMatrix(m)

##m2 <- rbind(c(1, -1/3, -2/4, 1))  
##sm2 <- makeCacheMatrix(m2)

cacheSolve(sm)

