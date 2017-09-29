1+1

5-1

1234*4

4/2
4/3

#PEMDAS Rules are followed by R

4*6 + 5

#variable assignment
x <- 2
x

y = 2
y

#multiple assignments
a <- b <- 7
a
b

#assignment using assign function
assign("z", 9)
z

#removing an assignment
rm(z)
z

#R is case sensitive
theVariable <- 18
theVariable
THEVARIBALE

#Understandng different data types
x <-2
x
class(x)
is.numeric(x)

#there is subtle difference between numeric and integer

#Adding L to the numeric value makes it an integer
i <- 5L
i
class(i)
is.integer(i)
is.numeric(i) #this returns true since Integer is a type of Numeric

class(4L)
4L*2.8 # R will promote the integer to a numerict given another argument is also floating point

class(5L/2L)

x <- "data"
class(x) # character data is R way representing the string data type
x

y <- factor("data")
y

#how many letters are there in the character data?
nchar(x)
nchar("hello")
nchar(452) #R automatically transforms the input into character strings.

#nchar cannot handle Factors y is a factor
nchar(y)

#dates in R
date1 <- as.Date("2012-06-28")
date1
class(date1)

#gives you the number of days since unix epoch 1 Jan 1970
as.numeric(date1)

#date time
date2 <- as.POSIXct("2012-06-28 17:42")
date2
class(date2)

#gives you the number of seconds since unix epoch 1 Jan 1970 00
as.numeric(date2)

#Logical data type
TRUE #1
FALSE #0

TRUE *5
FALSE * 5

k <- TRUE
k
class(k)
is.logical(k)


#checking equality
2 == 3

#checking inequality
2 != 3

2 < 3
2 > 3
2 <= 3
2<=2

"data" == "stats"
"data" == "data"
