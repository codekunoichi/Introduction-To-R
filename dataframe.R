#data frames

x<- 10:1
y <- -4:5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball"), "Tennis", "Criket", "Soccer")
q

# Data Frames have nice tabular data almost like a spreadsheet
# each column can have different types of data

theDF <- data.frame(x, y, q)
#The data frame will inherit the column variable name be default
theDF

# We can name the columns of the data frame
theDF <- data.frame(First=x, Second=y, Sport=q)
theDF

# The data frames automatically stores character data as factors.
# its important in modelling
class(theDF$Sport)

# To avoid default classification of character data into factors use stingsAsFactors argument

theDF <- data.frame(First=x, Second=y, Sport=q, stringsAsFactors=FALSE)
theDF

class(theDF$Sport)

#common Data Frame functios

nrow(theDF)
ncol(theDF)
dim(theDF)

NROW(theDF)
NCOL(theDF)

nrow(x)
NROW(x) # safety function which works on all types of objects not just matrices and data frames

names(theDF)

rownames(theDF)

rownames(theDF) <- c("a", "b", "c",
                     "d", "e", "f",
                     "g", "h", "i", "j")

theDF
rownames(theDF) <- NULL
rownames(theDF)

#printing entire frame will be cluttering the screen so to peak into the data frame, 
# use head, tail function

#to review the structure of data frames use head function
head(theDF) #default is 6 rows
head(theDF, n=7) #n is how many rows to print

#to review the structure of data at the tail end, use the "tail" function
tail(theDF)
tail(theDF, n=7)

theDF

#individual column from the data frame
theDF$Sport

#getting the individual cell item
theDF[3, 2] # 3rd row, 2nd column

# If we want to get 3rd row second through 3rd column.
theDF[3, 2:3]

# If we want to get 3rd and 5th row 2nd column elements
theDF[c(3, 5), 2]

#you can get multiple rows and multiple columns
theDF[c(3, 5), 2:3]

#get an entire column say the third column
# one column - returned as a vector
theDF[, 3] # no column selected only specifies the row number

#get both 2nd and 3rd column as a data frame all rows
# two columns returned as a vector
theDF[, 2:3]

class(theDF[, 3])

# to not get a vector when acking for a single column but preserve as a dataframe
theDF[, 3, drop=FALSE]
class(theDF[, 3, drop=FALSE])

#get the second row out the DF - this comes out as a data frame
theDF[2,]

class(theDF[2,])

#multiple rows out of the dataframe
theDF[2:3,]

#multiple columns can be obtained in any order by using the column names
theDF[, c("Second", "First")]

theDF[, c("First", "Second")]
theDF[, "Sport"]

theDF[, "Sport", drop=FALSE]

#short cut for above  : to get a specific column as a dataframe
theDF["Sport"]

#short cut to get a column as a vector
theDF[["Sport"]]
