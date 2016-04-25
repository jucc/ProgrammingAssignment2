# coursera.org - Data science specialization (Johns Hopkins)
# R programming - week 3 programming assignnment test code
# Juliana Cavalcanti Correa - 04/16

source("cachematrix.R")

orig = matrix(sample(1:50, 25), 5, 5)

cacheMatrix <- makeCacheMatrix(orig)
cacheMatrix$get()          # shows the matrix
cacheSolve(cacheMatrix)    # calculates the inverse and stores in cache
cacheSolve(cacheMatrix)    # retrrieves from cache (must print the msg)

cacheMatrix$set(orig)      # resets the inverse
cacheSolve(cacheMatrix)    # calculates the inverse and stores in cache
cacheSolve(cacheMatrix)    # retrrieves from cache (must print the msg)