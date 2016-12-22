## This is programming assignment 2 for Coursera R Programming
## Caching the inverse of a matrix


## This function creates a list of functions

makeCacheMatrix <- function(x = matrix()) {
        im <- NULL
        set <- function(y) {
                x <<- y
                im <- NULL
        }
        get <- function() x
        setinv <- function(invm) im <<- invm
        getinv <- function() im
        list(set = set, get = get, setinv = setinv, getinv = getinv)

}



## This function retrieves the inverse matrix from the cache or computes it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        im <- x$getinv()
        if(!is.null(im)) {message("Getting cached inverse matrix")
                return(im)
        }
        om <- x$get()
        im <- solve(om)
        x$setinv(im)
        im
}
