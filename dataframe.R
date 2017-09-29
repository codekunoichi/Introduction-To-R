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
