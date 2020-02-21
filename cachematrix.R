## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverse<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
	}
	get<-function()x
<<<<<<< Updated upstream
	setInverse<-function(i) inverse<-i
=======
	setInverse<-function(y) inverse<-i
>>>>>>> Stashed changes
	getInverse<-function() inverse
	list(set=set,get=get,
		setInverse=setInverse,
		getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse<-x$getInverse()
        if(!is.null(inverse)){
        	message("getting cached inverse")
        	return(inverse)
        }
<<<<<<< Updated upstream
        data<-x$get()
        inverse<-solve(data,...)
        x$setInverse(inverse)
=======
        data<-x@get()
        inverse<-solve(data,...)
        x%setInverse(inverse)
>>>>>>> Stashed changes
        inverse
}
