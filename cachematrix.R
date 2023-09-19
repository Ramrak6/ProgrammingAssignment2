## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<- NULL    #initializing inverse as null
  set <- function(y) {
    x <<- y
    inv <<- NULL
}

  get <- function() x    #function to get matrix
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() {
    inver<- ginv(x)
    inver%%x    #function to obtain inverse of the matrix
  }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## Write a short comment describing this function
##This is used to get the cache data
cacheSolve <- function(x, ...) ## gets cache data
{ 
  inv<- x$getinv()
  if(!is.null(inv)){ #checking wheater inverse is null
    message("getting cached data!")
    return(inv)
  }
    data<- x$get()
    inv<- slove(data,...) #calculates inverse value
    x$setinv(inv)
     inv   ## Return a matrix that is the inverse of 'x'
}
