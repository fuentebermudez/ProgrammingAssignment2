## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric(),nrow=1,ncol=1) {
        matrixObject<-matrix(x,nrow,ncol)
        inverse<-NULL
        
        set <- function(y=numeric(),nrow=numeric(),ncol=numeric()) {
                x <<- y
                nrow<<-nrow
                ncol<<-ncol
                matrixObject<<-matrix(y,nrow,ncol)
                inverse <<- NULL
        }
        
        get<-function() matrixObject
        setInverse<-function(Pinverse) inverse<-Pinverse
        getInverse<-function() inverse<-solve(matrixObject)
        
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

