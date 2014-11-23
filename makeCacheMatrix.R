makeCacheMatrix <- function(x = matrix()) {
        inv<-matrix()
        solved<-FALSE
        set <- function(y) {
                x <<- y
                inv<<-matrix()
                solved<<-FALSE
        }
        get <- function() x
        setinv <- function(inv_mat) {
                solved<<-TRUE
                inv <<- inv_mat
        }
        issolved <- function() solved   
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv, issolved=issolved,
             getinv = getinv)
}
