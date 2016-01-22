## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

x_inversa <- NULL
set <- function(x_nue) {   ##another matrix x_nue
	x <<- x_nue
	x_inversa <<- NULL }
get <- function() {
 x 
} ##obtain matrix

set_inverse <- function(inv_nue) {  ##other matrix inverse
	x_inversa <<- inv_nue
}
get_inverse <- function() {
	x_inversa
}
list(set=set, get=get,
set_inverse=set_inverse, get_inverse=get_inverse)


cacheSolve <- function(cached_x, ...) {
x_inversa <- cached_x$get_inverse()
if(!is.null(x_inversa)){
message("calculation of cache")
return(x_inversa)
}
data <- cached_x$get()
inv_nue <- solve(data)
cached_x$set_inverse(inv_nue)
inv_nue
}
