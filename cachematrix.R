## Put comments here that give an overall description of what your
## functions do

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invmat <- NULL
  set <- function(y){
    x <<- y
    invmat <<- NULL
  }
  get <- function() x
  setInverse <- function(solvemat) invmat <<- solvemat
  getInverse <- function() invmat
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
