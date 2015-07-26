## These two functions will cache the inverse of a matrix

## The first function creates a list that will:
## Set, Get the value of a matrix and
## Set, Get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    n <- NULL
    set <- function(y) {
        x <<- y
        n <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) n <<- inverse
    getinverse <- function() n
    list(set=set, get=get, 
         setinverse=setinverse, 
         getinverse=getinverse)
}


## This function will return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
    n <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(n)
    }
    data <- x$get()
    n <- solve(data)
    x$setinverse(n)
    n
}
