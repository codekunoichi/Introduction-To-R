theList <- list(A=matrix(1:9, nrow=3), B=1:5, c=matrix(1:4, 2), d=2)
theList

# to apply a function in each element of the list, use lapply
lapply(theList, sum)

sapply(theList, sum)
