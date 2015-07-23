## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function makeCacheMatrix creates 3 operation functions on input matrix: 
## get_mat(): get the matrix itself
## set_inv(): set(cache) the inverse of the matrix
## get_inv(): get the cached inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

    mat_inv<- NULL
    get_mat <- function() x
    set_inv <- function(inv) mat_inv <<- inv
    get_inv <- function() mat_inv
    list(get_mat = get_mat, set_inv = set_inv, get_inv = get_inv)

}





## Write a short comment describing this function
## Function cacheSolve check if the inverse of matrix has been cached before, if not, it calculates it, caches it, and then returns it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    mat_inv <- x$get_inv()
    if(!is.null(mat_inv)) {
        message("Returning cached matrix inverse")
        return(mat_inv)
    }
    mat <- x$get_mat()
    mat_inv <- solve(mat)
    x$set_inv(mat_inv)
    mat_inv

}
