#Matrices are two dimensional arrays containing data of the same type
# has rows and columns very similar to daat frames, but only difference is
# it contains only data of one type.

#to create matrices
A <- matrix(1:10, nrow=5)
A

B <- matrix(21:30, nrow=5)
C <- matrix(21:40, nrow=2)

B
C

#to find out how many rows in the the matrix
nrow(A)

#to find out how many columns in the matrix
ncol(A)

#to find out about the dimensions of the matrix
# first output is how many rows (nrow), second output is how many columsn (ncol)
dim(A)

# similar to vector one can use the matrix of same dimension to do math operations
# on each cell
A
B
A + B

A * B
A == A
A == B

# dot product of matrix very important for statistical calculation
# dot product can only work when the number of columns of matrix 1 is equal
# to the number of rows of matrix 2
ncol(A)
nrow(B)
#since the number of rows or B is 5 and columns is 2
# we will transpose the matrix to make 2 rows and 5 columns.
t(B)

#dot product notation = %*%
A %*% t(B)

A %*% C

# similar to data frames naming the row and columns one may name the rownames and column names
colnames(A)
rownames(A)

colnames(A) <- c("Left", "Right")
rownames(A) <- c("1st", "2nd", "3rd", "4th", "5th")
A

colnames(B)<- c("First", "Second")
rownames(B) <- c("One", "Two", "three", "Four", "Five")
B

LETTER
LETTERS

letters

colnames(C) <- LETTERS[1:10]
rownames(C) <- c("Top", "Bottom")
C
A
t(A)

#The rownames for the dot product will be inherited from A and column names are inherited from C
A %*% C
