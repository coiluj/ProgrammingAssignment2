## Put comments here that give an overall description of what your
## functions do

## Following the same structure as the example, replacing
## the mean of the vector with the inverse of the matrix
## 1. set the value of a matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get<-function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  
  list(set=set,get=get,
       setinv=setinv,
       getinv=getinv)
  
}


## This function calculates the inverse of mtrix we input above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)){
    message("getting chached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinv(m)
  m
}
