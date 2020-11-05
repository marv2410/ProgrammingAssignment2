## Put comments here that give an overall description of what your
## functions do

## This function recive a object's type matrix, and save in cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
#set the value of the vector
    set <- function(y){
    x <<- y
    mat <<- NULL
    }
#get the value of the vector  
  get <- function()x
#set the matrix Inverse
  setInverse <- function(inverse) mat <<- inverse
#get the matrix Inverse
  getInverse <- function() mat 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
  }


## this function solve the inverse matrix saved in cache

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  mat <- x$getInverse()
  if(!is.null(mat)) {
    message("getting cached data")
    return(mat)
  }
  data <- x$get()
  mat <- Solve(data, ...)
  x$setInverse(mat)
  mat
   }
