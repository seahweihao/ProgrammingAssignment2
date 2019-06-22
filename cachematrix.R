## Put comments here that give an overall description of what your
## functions do

## This function create matrix object that caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function computes the inverse of makeCacheMatrix object above. If the inverse
## has already been computed, then the inverse of the matrix from the cache is retrieved.

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matr <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
        ## Return a matrix that is the inverse of 'x'
