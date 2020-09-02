## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function - CREATES A MATRIX AND HAVE
##ANNOTHERS SUBFUNCTIONS: (1) Get the matrix and (2) Get the inverse value of the matrix-

makeCacheMatrix <- function(x = matrix()){
      inv <- NULL
      set <- function (y){
            x <<- y
            inv <<- NULL
      }
      get <- function() {x}
      setInverse <- function(inverse) {inv <<- inverse}
      getInverse <- function(){inv}
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function - It "reppairs" the function makeCacheMatrix when the
## Inverse value is NULL

cachesolve <-function(x,...){
      inv <- x$getInverse()
      if(!is.null(inv)){
            message("getting cached data")
            return(inv)
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
}

        ## Return a matrix that is the inverse of 'x'
}

pmatrix<-makeCacheMatrix(matrix(1:4, nrow=2, ncol=2))
pmatrix$get()
get
