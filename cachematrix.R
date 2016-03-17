## Put comments here that give an overall description of what your
## functions do
## create a matrix, and cache its inverse
## if changed, clear the cached inverse 
## found error , i mix the inverse with transposition of matrix

makeCacheMatrix <- function(x = matrix()) {
 inv <-NULL
 set <- function(y){
   x <<- y
   inv <<- NULL
 }
 get <- function() x
 setInverse <- function(inverse) inv <<- inverse
 getInverse <- function() inv
 list(set = set, get = get, 
      setInverse = setInverse,
      getInverse = getInverse)
}


## Write a short comment describing this function
# first getInverse, if null use solve() get inverse matrix
# and don't forget cache it  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse();
  if (!is.null(inv)){
    message("getting cached inverse matrix")
    return (inv)
  }
  m <- x$get();
  inv <- solve(m,...)
  x$setInverse(inv)
  inv
}
