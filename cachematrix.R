## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

  makeCacheMatrix <- function(x = matrix()) { #define the argument (x) as matrix
    # This function creates a special "matrix" object that can cache
    #its inverse
    inver <- NULL #define inver as NULL to hold value of matrix inverse
    set <- function(y){ #define the set function 
      x <<- y #value of matrix in parent environment
      inver <<- NULL #if i have a new matrix, reset inver to null
    }
    get <- function()x #define the get function
    setInverse <- function(inverse) inver <<- inverse #assigns value of inver 
    getInverse <- function() j #gets the value of inver where called 
    list(set = set, get = get,  #refer to the functions with the  $ operator 
         setInverse = setInverse, 
         getInverse = getInverse)
  
}


## Write a short comment describing this function

  cacheSolve <- function(x, ...) {
    
    #This function computes the inverse of the special "matrix" returned by
    #makeCacheMatrix above. If the inverse has already been calculated 
    #(and the matrix has not changed), 
    #then the cachesolve should retrieve the inverse from the cache.
    ## Return a matrix that is the inverse of 'x'
    j <- x$getInverse()
    if(!is.null(j)){
      message("getting cached data")
      return(j)
    }
    mat <- x$get()
    j <- solve(mat,...)
    x$setInverse(j)
    j
  }
