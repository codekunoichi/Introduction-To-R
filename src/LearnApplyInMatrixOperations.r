theMatrix <- matrix(1:9, nrow=3)
theMatrix

# using apply to sum up the columns
apply(theMatrix, MARGIN=2, sum)

# using apply to sum up the rows
apply(theMatrix, MARGIN=1, sum)

colSums(theMatrix)

rowSums(theMatrix)

theMatrix[2, 1] <- NA

theMatrix

# the NA will lead to sum to results in NA - NA is important and the outcome is indeterminate, 
# you cannot just ignore the NA
apply(theMatrix, 1, sum)

# example of how to ignore the NA and still end up in the sum
apply(theMatrix, 1, sum, na.rm=TRUE)

rowSums(theMatrix)

rowSums(theMatrix, na.rm=TRUE)
