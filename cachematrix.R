## Put comments here that give an overall description of what your
## functions do

## The function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        
                inverted <- NULL
                set <- function(y) {
                        x <<- y
                        inverted <<- NULL
                }
                get <- function() x
                setinverted <- function(inverse) inverted <<- inverse
                getinverted <- function() inverted
                list(set = set, get = get, setinverted = setinverted, getinverted = getinverted)

}


##  The function below computes the inverse of the special "matrix".
## If the inverse has already been calculated , then it should retrieve the inverse from the cache.



cacheSolve <- function(x, ...) {
       
                ## Return a matrix that is the inverse of 'x'
                inverted <- x$getinverted()
                if(!is.null(inverted)) {
                        message("getting cached data")
                        return(inverted)
                }
                data <- x$get()
                inverted <- solve(data)
                x$setinverted(inverted)
                inverted
               ## Return a matrix that is the inverse of 'x'
}
