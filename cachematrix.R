## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
  set <- function(t) {
    x <- t
    inver <- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inver <- inverse
  getInverse <- function() inver
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function
#this function can help to inverse a matrix you put

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inver <- x$getInverse()
  if (!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  matri <- x$get()
  inver <- solve(matri, ...)
  x$setInverse(inver)
  inver
}
