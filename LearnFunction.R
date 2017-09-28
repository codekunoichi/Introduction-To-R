x <- 1:10
x

#The following functions operates on the whole vector
mean(x)

sum(x)

# the nchar operate on individual element of the vector
nchar(x)

#trim = is asking for what % of observation will be trimmed from either side of the observation list
mean(x=x, trim=.1)

mean(x=x, trim=.1, na.rm=TRUE)

#now place NA in the 2nd and 6th position of the vector x
x[c(2, 6)] <- NA

# the following will give the result NA since NA is missing data but still counted
# and with NA the mean cannot be calculated , hence NA is the outcome.
mean(x)

#add na.rm = TRUE to remove the NAs and then calculate the mean
mean(x, na.rm=TRUE)
