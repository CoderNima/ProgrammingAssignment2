## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix <- function(x = matrix()) {
  ## inverse property
  inv <- NULL
  ## set matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  ## get matrix
  get <- function() x
  ## settine inverse of matrix
  setinverse <- function(inverse) inv <<- inverse
  ## getting inverse of matrix
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## calculates the inverse of martix created by above function
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}

