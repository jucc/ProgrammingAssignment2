# coursera.org - Data science specialization (Johns Hopkins)
# R programming - week 3 programming assignnment test code
# Juliana Cavalcanti Correa - 04/16

## functions that define a matrix able to cache its own inverse in order to avoid incurring large computing costs

## Creates a cachematrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inver) inv <<- inver
    getinverse <- function() inv
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Returns the inverse of matrix x, retrieving it from cache, if available, 
## or calculating and storing it in cache otherwise

cacheSolve <- function(x, ...) {
    inv <- x$getinverse() 
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    matr <- x$get()
    inv <- (solve(matr, ...))
    x$setinverse(inv)
    inv
}
