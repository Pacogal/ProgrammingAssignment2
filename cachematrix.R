## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
####ANSWER

###makeCacheMatrix function creates a special matrix object which caches its inverse


> makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x
setinverse <- function(solve) m <<- solve
getinverse <- function() m
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)





## Write a short comment describing this function

###cacheSolve function computes the inverse of the special matrix returned by the makeCacheMatrix function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
####ANSWER
cacheSolve <- function(x, ...) {
m <- x$getinverse()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
}


