## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

areEqual <-function (pMatrix1, pMatrix2)
{
  is.matrix(pMatrix1) && is.matrix(pMatrix2) && dim(pMatrix1) == dim(pMatrix2) && all(pMatrix1 == pMatrix2)
}


## Similarly to cacheMean, this function
## contains getters and setters
makeCacheMatrix <- function(pMatrix = matrix()) {

  
  #cmMatrix <- pMatrix
  cmInverse <- NULL
  
  get <- function() pMatrix
  
  set <- function (pMat)
  {
    #cmMatrix <<-pMatrix
    pMatrix <<-pMat
    cmInverse <<-NULL
  }
  
  getInv <- function() cmInverse
  
  setInv <-function(pInv)
  {
    cmInverse <<-pInv
  }
  
  list(get=get, set=set, getInv=getInv, setInv = setInv)
}


## Similarly to cacheMean, this function
## looks for a cached version. If it can't find one
## it recalculates a new one and caches it
cacheSolve <- function(pMatrix, ...) {
        ## Return a matrix that is the inverse of 'x'
  cmInverse <- pMatrix$getInv()
  if(!is.null(cmInverse))
  {
    print("---[cached version]---")
    return (cmInverse)
  }
  
  cmInverse <- solve(pMatrix$get())
  pMatrix$setInv(cmInverse)
  return (cmInverse)
}
