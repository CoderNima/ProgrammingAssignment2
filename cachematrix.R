## Caching the inverse of matrix: Since matrix inversion is a costly process thus cahing the inverse of it may be more 
##beneficial then computing it over and over.


## this function creates a matrix that can cache its inverse
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
    setInverse <- function(inverse) 
    inv <<- inverse
     ## getting inverse of matrix
    getInverse <- function() inv
   ## list
    list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## computes the inverse of martix created by makeCacheMatrix function
cacheSolve <- function(x, ...) {
    inv <- x$getInverse()
    ## if the inverse is already calculated
    if(!is.null(inv)) {
        message("cached data")
        return(inv)
    }
    ## otherwise, calculate inverse
    data <- x$get()
    inv <- solve(data)
    x$setInverse(inv)
    return (inv)
}
