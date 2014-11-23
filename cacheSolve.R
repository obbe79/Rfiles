cacheSolve<-function(x,...) {
        inv <- x$getinv()
        data <- x$get()
        if( identical(x$get(),data) & x$issolved() )  {
                message("getting cached data")
                return(inv)
        }
        
        inv <- solve(data,...)
        x$setinv(inv)
        inv
}