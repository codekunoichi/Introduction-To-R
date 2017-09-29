#Array can take an arbitrary number of dimensions

#creating arrays
theArray <- array(1:12, dim=c(2, 3, 4))
theArray

theArray[1, ,]
theArray[1, , 1]
theArray[, , 1]
