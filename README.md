# ProgrammingAssignment2
# Data Science Class

# makeCacheMatrix()
# cacheSolve()

# Usage of the canned version:

# first create a matrix, like z <- matrix(c(1,3,3,1),2,2)

# then call a <- makeCacheMatrix(z), this will create the functions get, set, getsolve, and setsolve
# which will be accessible through the variable a

# you can now solve (invert) the matrix by calling b <- cacheSolve(a)
# you can store the result into the cache by calling a$set(b)
# and you can verify that the results are in cache by calling m <- a$get() 
# or just type a$get() to see the output in your console

#
# however these canned functions don't work "exactly" like the instructions suggest they should
#
# to augment these functions, I've written a version that is more intuitive. The routines are
# called BrianCacheMatrix() and BrianCacheSolve()
#
# to use this augmented version, it is only necessary to call the
# u <- BrianCacheSolve(x) routine with your matrix x
#
# then simply call u$get() to see the matrix, and u$getinv() to see its inverse,
# both of these will come from the cache
#
# the call to BrianCacheSolve() will print your matrix and its inverse, and store
# both in a cache that is returned to you (in this case the cache is called "u")
#
# the usage of the underlying routine BrianCacheMatrix can be made visible like this:
#
# first create your matrix, h <- matrix(c(1,3,3,1),2,2)
# now call k <- BrianCacheMatrix(h)
# now call k$set(h), this will set the matrix h into cache
# now call k$get() to verify that the matrix is in the cache
# finally call k$getinv() to verify that the matrix inverse is also in the cache
#

