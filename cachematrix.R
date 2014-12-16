## ======================================================================================
## Coursera - Programming in R (Programming Assignment 2)
## Write a pair of functions that cache the inverse of a matrix.
## Matrix inversion is usually a costly computation and there may be some benefit to caching 
## the inverse of a matrix rather than computing it repeatedly.
## ======================================================================================

## --------------------------------------------------------------------------------------
## makeCacheMatrix(x)
## This takes and ordinary matrix and returns a cache matrix object
## The following methods are avaialble
##    set       Assigns a new matrix to the object. Also clears the cache 
##    get       Returns the current matrix.
##    setsolve  set the cache to the matrix inverse
##    getsolve  get the matrix inverse from the cache
## --------------------------------------------------------------------------------------

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  
  get <- function() x
  
  setsolve <- function(solve) s <<- solve
  
  getsolve <- function() s
  
  list(
    set = set, 
    get = get,
    setsolve = setsolve,
    getsolve = getsolve)
}

## --------------------------------------------------------------------------------------
## CacheSolve(x, ...) 
## x, ....  One or more cache matrix objects created by makeCacheMatrix function  
##
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve will retrieve the inverse from the cache instead.
## --------------------------------------------------------------------------------------

cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("retreived from cached data...")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
