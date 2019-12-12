## Put comments here that give an overall description of what your
## functions do

## this function tends to receive a matrix and create a list of the function we defined

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  # reset the output matrix
  set <- function(y){
    x <<- y
    # assign the input matirix
    m <<- NULL
    # reset the m when a new matrix is input
  }
  get <- function() x
  #get the input matrix
  setinverse <- function(inverse) m <<- inverse
  #set the inverse of the input matrix
  getinverse <- function() m
  #get the inverse matrxi
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  #if the inversed matrix has been calculated, then return it
  mat <- x$get()
  m <- solve(mat, ...)
  x$setinverse(m)
  m
  #if the inversed matrix has not been calculated, then get the input matrix
  #calculate the inversed matrix and then return the inversed matrix
}
