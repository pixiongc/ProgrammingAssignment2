## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  # set the inverse initially
  i <- NULL
  # set the matrix
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  # get the matrix 
  # get() function return the matrix x
  get <- function() x
  
  #set the inverse of the matrix
  setinverse <- function(inverse) i <<- inverse
  
  # get the inverse factor
  getinverse <- function() i
  
  # creat a list of functions
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
  
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
    i <- x$getinverse()
    
    # check available results
    if(!is.null(i)) {
      message("getting cached data")
      return(i)
    }
  
    #if no available result
  
    # input the matrix
    data <- x$get()
  
    #calculate the inverse with solve()
    i <- solve(data) 
  
    # set the inverse
    x$setinverse(i)
  
    # return the inverse
    i
  
}
