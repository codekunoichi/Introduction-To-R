theList <- list(A=matrix(1:9, nrow=3), B=1:5, c=matrix(1:4, 2), d=2)
theList

# to apply a function in each element of the list, use lapply
lapply(theList, sum)

sapply(theList, sum)

theNames <- c("George", "Lisa", "Baron")
# lapply, sapply works on vector as well
lapply(theNames, nchar)

#mapply - goes over multiple list for the same function, element by element.

firstList <- list(A=matrix(1:16, 4), b=matrix(1:16, 2), c=1:5)
secondList <- list(A=matrix(1:16, 4), b=matrix(1:16, 8), c=15:1)
firstList

secondList

#check to see if each argument 
mapply(identical, firstList, secondList)

simplefunc <- function(x, y)
{
  NROW(x) + NROW(y)
}

mapply(simplefunc, firstList, secondList)
