## Put comments here that give an overall description of what your
## functions do

## Creates a matrix object that can cache it's inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinv <- function(solve) m <<- solve
	getinv <- function() m
	list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}

## Checks cache to see if inverse of matrix has already been solved
## else returns inverse

cacheSolve <- function(x, ...) {
     	## Return a matrix that is the inverse of 'x'
	m <- x$getinv()
	if(!is.null(m)) {
                message("getting cached data")
                return(m)
       }
       data <- x$get()
       m <- solve(data, ...)
       x$setinv(m)
       m


}
