## These two functions will cache the inverse of a matrix

## The first function creates a list that will:
## Set, Get the value of a matrix and
## Set, Get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set=set, get=get, 
         setinverse=setinverse, 
         getinverse=getinverse)
}


## This function will return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
}
