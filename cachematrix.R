## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

areEqual <-function (pMatrix1, pMatrix2)
{
  is.matrix(pMatrix1) && is.matrix(pMatrix2) && dim(pMatrix1) == dim(pMatrix2) && all(pMatrix1 == pMatrix2)
}

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
  
  setInv <-function()
  {
    cmInverse <<-solve(cmMatrix)
  }
  
  list(get=get, set=set, getInv=getInv, setInv = setInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
