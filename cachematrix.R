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
        setInverse<-function(Pinverse) inverse<<-Pinverse
        getInverse<-function() inverse
        
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## This function takes as parameter a matrix object that can store her inverse. If the inverse
## is nul the function calculates the inverse, store it in the object and returns it avoiding recalculation.

cacheSolve <- function(matrixObject, ...) {
        ## Return a matrix that is the inverse of 'matrixObject'
        inverseMatrix <- matrixObject$getInverse()
        if(!is.null(inverseMatrix)) {
                message("getting cached data")
                return(inverseMatrix)
        }
        else{
                matrixData <- matrixObject$get()
                inverseMatrix <- solve(matrixData, ...)
                matrixObject$setInverse(inverseMatrix)
                inverseMatrix
        }

}




