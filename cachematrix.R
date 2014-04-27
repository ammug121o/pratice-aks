## Put comments here that give an overall description of what your
## functions do


## This function takes an argument x of type matrix object and returns a list of 4 functions wrapped in the list.
## set function in the list is used to set matrix value.
## get funciton is used to get matrix value.
## setInverse function is used to set matrix value (inverse) to matrix object.
## getInverse function is used to get matrix value (inverse).


makeCacheMatrix <- function(x = matrix()) {
        if(!is.matrix(x)) stop("not a matrix")
        CacheMatrix <- NULL
        set <- function(mtrx){
                x <<- mtrx
                CacheMatrix <<- NULL
        }
        get <- function() x
        setInverse <- function(pMatrix) CacheMatrix <<- pMatrix
        getInverse <- function() CacheMatrix
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## This function is used to return the inverse of a matrix.  
## Inverse matrix must be returned from cache if it is already calcuated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cInvMatrix <- x$getInverse()
        if(!is.null(cInvMatrix)){
                message("getting cached data")
                return(cInvMatrix)
        }
        data <- x$get()
        cInvMatrix <- solve(data, ...)
        x$setInverse(cInvMatrix)
        c$InvMatrix
}
