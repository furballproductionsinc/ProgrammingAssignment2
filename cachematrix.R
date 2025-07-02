## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##
## this is a clone of the of the original version,
## it doesn't "exactly" satisfy the instructions...
##
## see below for my version
##

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## Write a short comment describing this function
##
## this is a clone of the original version,
## it doesn't "exactly" satisfy the instructions...
##
## see below for my version
##

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getsolve()
        if(!is.null(m)) {
          message("getting cached inverse")
          return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        m
}

## ########################################
## Brian's version (see the README.md file)
## ########################################

BrianCacheMatrix <- function(x = matrix()) {
  mB <- NULL
  set <- function(y) {
    x <<- y
    mB <<- solve(x)
  }
  get <- function() x
  getinv <- function() mB
  list(set=set, get=get, getinv=getinv)
}


## just call this routine with your matrix,
## and it will call the above routine to store
## your matrix and its inverse in the cache
##
## this routine will return a reference to
## your cache

BrianCacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- solve(x)
  message(" ")
  message("your matrix is:")
  message(" ")
  print(x)
  message(" ")
  message("the inverse is:")
  message(" ")
  print(m)
  message(" ")
  g <- BrianCacheMatrix(x)
  g$set(x)
  message("your matrix and its inverse are now cached")
  g
}

