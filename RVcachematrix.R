# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse. 

## Created a special Matrix by following these steps

## 1 First set the value of a matrix 

## 2 Second get the value of the matrix 

## 3 Alternatively setting next the value of inverse of the matrix 

## 4 and last is get the value of inverse of the matrix 

 

makecachematrix<-function(x = matrix()) { 

inverse1 <- NULL 

set <- function(n) { 

x <<- n 

inverse1 <<- NULL 

} 

get <- function() x 

 

setInversefun <- function(inverse) inverse1 <<- inverse 

getInversefun <- function()inverse1 

list( set = set, get = get, setInversefun=setInversefun, getInversefun=getInversefun) 

} 

##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.  

##If the inverse has already been calculated (and the matrix has not changed),  

##then the cachesolve should retrieve the inverse from the cache. 

 

 

cachesolve <- function(x, ...){ 

inverse1 <- x$getInversefun() ##returns matrix that is the inverse of 'x' 

if (!is.null(inverse1)){ 

message("get cache data") 

return(inverse1) 

} 

matrixnew <- x$get() 

inverse1 <- solve(matrixnew, ...) 

x$setInversefun(inverse1) 

inverse1 

 

}

