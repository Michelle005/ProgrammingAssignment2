## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function makeCacheMatrix creates a matrix object that is
##able to cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  
  #Set the value of the Matrix
  
  setMatrix <- function(y)
    x<<-y
  invMatrix <<- NULL
}

getMatrix <- function() x                               #Get the value of the Matrix
setInverse <- function(inverse) invMatrix <<- inverse   #Set the value of the invert Matrix
getInverse <- function() invMatrix                      #Get the value of the invery Matrix
list(setMatrix = setMatrix, getMatrix = getMatrix,
     setInverse = setInverse, getInverse = getInverse)


## Write a short comment describing this function

##The CacheSolve function calculates the inverse of the makeCacheMatrix output returned.
##In the event that the inverse has been calculated, the CacheSolve will return the inverse from the cache


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invMatrix <- x$getInverse()
  if(!is.null(invMatrix)) {                        #If inverse is not NULL
    message("Getting Cached Invertible Matrix")    #Message - Getting Cached Invertible Matrix
    return(invMatrix)}                             #Return the invertible Matrix
}
data <- x$getMatrix()
inv <- solve(data,...)
x$setInverse(inv)
inv
}