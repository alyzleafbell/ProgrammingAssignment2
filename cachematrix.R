## Put comments here that give an overall description of what your
## functions do
## create a matrix, and cache its inverse
## if changed, clear the cached inverse 
## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
 t <-NULL
 set <- function(y){
   x <<- y
   t <<- NULL
 }
 get <- function() x
 setInverse <- function(inverse) t <<- inverse
 getInverse <- funcition() t
 list(set = set, get = get, 
      setInverse = setInverse,
      getInverse = getInverse)
}


## Write a short comment describing this function
# first getInverse, if null use t() get inverse matrix
# and don't forget cache it  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  t <- x$getInverse();
  if (!is.null(t)){
    message("getting cached inverse matrix")
    return (t)
  }
  m <- x$get();
  t <- t(m,...)
  x$setInverse(t)
  t
}
