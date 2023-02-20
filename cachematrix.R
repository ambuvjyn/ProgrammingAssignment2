## Caching the Inverse of a Matrix.
## Below are two functions that are used to create an object that stores a matrix and caches its inverse.

## The function will create a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix())
  {
    inv <- NULL
    set <- function(y)
      {
        x <<- y
        inv <<- NULL
      }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }


## This function computes the inverse of the special "matrix" created by the above function makeCacheMatrix.
##If the inverse is already calculated then it retrieves the inverse from the cache.

cacheSolve <- function(x, ...)
  {
    m <- x$getmean()
    if(!is.null(m))
      {
        message("getting cached data")
        return(m)
      }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
        ## Return a matrix that is the inverse of 'x'
  }
