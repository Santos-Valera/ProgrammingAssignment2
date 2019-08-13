## Put comments here that give an overall description of what your
## functions do
## R Programming. Week 3 Assignment
## August 12, 2019; GitHub user: Santos-Valera

## Can calculate the inverse matrix of a customized matrix, 
## as well as cache the result. 


makeCacheMatrix <- function(x = matrix()) {
  
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)

}


## Function that returns the inverse matrix or the caching matrix result.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    m <- x$getmean()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
}
