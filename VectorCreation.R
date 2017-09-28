#Vector creation
x <-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x

#multiples the 3 with each entry of the vector
x*3

#x+2 => Add 2 to each element of the vector
x+2

#x-3 => Subtracting 3 from each element of X Vector
x-3

#x/4 => Divide each element of X by 4
x/4

#x^2 => square each element of the vector
x^2

#sqrt(x) => Square root each element of x vector
sqrt(x)

#other representation of creating vectors
1:10
10:1
-2:3
5:-7

x <- 1:10
y <- -5:4
x
y

x+y
x-y
x*y
x/y
x^y

length(x)
length(y)
length(x+y)

x + c(1, 2)
x + c(1,2,3)

#we can do element by element logical comparision
x <= 5
x > y

y > x 

x <- 10:1
y <- -4:5
x < y

any(x < y)
all(x < y)

q <- c("Hockey", "Football", "Baseball", "Curling", 
       "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")
q
nchar(q)

x
#r the first element index is 1 and not 0
x[1]

x[1:2]

# the following gives x[1], x[4]
x[c(1, 4)]

#the assignment is using = and not <- since its inside a function c for vector creation
c(One="a", Two="y", Last="r")

#one may name the vector after the vector has been created
w <- 1:3
w
names(w) <- c("a", "b", "c")
w

q
q2 <- c(q, "Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")
q2

#working with Factor
q2Factor <- factor(q2)
q2Factor
#internal representation of factors is numeric, 
#each item has a dictinct number associated with it
as.numeric(q2Factor)

#delaing of not present data

# data absence

#NA - Missing data 
#null - Absence of anything

z <- c(1, 2, NA, 8, 3, NA, 3)
z #it will print NA since missing data, does not mean absense of data hence prints.

is.na(z)

zChar <- c("Hockey", NA, "Lacrosse")
zChar
length(zChar)

is.na(zChar)

z<- c(1, NULL, 3)
z
length(z)

d <- NULL
is.null(d)
