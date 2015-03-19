## This functions creates a new matrix and allows to use the value of the inverse
#matrix that is stored in memory this allow us avoid recalculate the inversematrix.
#  This matrix is able to set and get the inverse matrix ob the matrix defined.

## This function creates the matrix and defines the way in which 
## it is able to save in memory her inverse.

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
        getInverse<-function() inverse
        
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

