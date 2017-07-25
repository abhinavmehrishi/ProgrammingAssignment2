## Program Assignment 2: First. This program creates a matrix and caches it's inverse 
## Second. The program calls for the cache incase the inverse of a matrix already exists, otherwise calculates it

## This function creates a matrix 'x' and creates another 'm'  variable that assumes to be the inverse 

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function (y){
    x <<- y
    m <<- NULL
    
  }
  get <-function() x
  setmatrixinvers <- function(inversem){m <<- inversem}
  getmatrixinvers <- function() m
  list(set = set, get = get, setmatrixinvers = setmatrixinvers, getmatrixinvers=getmatrixinvers)
  
}


## This function calls for the inverse of matrix 'x' if 'm' is not NULL otherwise it calculates 'm' and returns it as 'm'

cacheSolve <- function(x, ...) {
  m <- x$getmatrixinvers()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <-x$get()
  m <- solve(data)
  x$setmatrixinvers(m)
  m
}
