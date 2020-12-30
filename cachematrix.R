## Put comments here that give an overall description of what your
## functions do

## This function creates a special matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  invmat <- NULL
  set <- function(y){
    x <<- y
    invmat <<- NULL
  }
  get <- function() x
  setInverse <- function(solvemat) invmat <<- solvemat
  getInverse <- function() invmat
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## This function computes the inverse of the special "matrix" returned by function above.

cacheSolve <- function(x, ...) {
  invmat<-x$getInverse()
  if(!is.null(invmat)){
    message("getting cached data")
    return(invmat)
  }
  data <- x$get()
  invmat <- solve(data, ...)
  x$setInverse(invmat)
  invmat   
}

