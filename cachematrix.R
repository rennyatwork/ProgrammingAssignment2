## Put comments here that give an overall description of what your
## functions do



## Similarly to cacheMean, this function
## contains getters and setters
makeCacheMatrix <- function(pMatrix = matrix()) {

  ##cmInverse will hold CachedMatrix Inverse value
  cmInverse <- NULL
  
  ## returns the "normal" matrix
  get <- function() pMatrix
  
  ## sets the "normal" matrix and nulls the inverse
  set <- function (pMat)
  {
    #cmMatrix <<-pMatrix
    pMatrix <<-pMat
    cmInverse <<-NULL
  }
  
  ## returns the inverse matrix
  getInv <- function() cmInverse
  
  ## sets the inverse matrix
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
        ## Return a matrix that is the inverse of 'pMatrix'
  
  ##cmInverse receives cacheMatrix's inverse
  ## if it has a value in cache, it will return the cached value
  cmInverse <- pMatrix$getInv()
  if(!is.null(cmInverse))
  {
    print("---[cached version]---")
    return (cmInverse)
  }
  
  ## otherwise, sets the inverse matrix
  cmInverse <- solve(pMatrix$get())
  pMatrix$setInv(cmInverse)
  return (cmInverse)
}
