#Lists can contain arbitraty number of elements and each element can be of different type
#creating list using the list command
list1 <- list(1, 2, 3)
list1
list2 <- list(c(1, 2, 3))
list2

#list with many different types
list3 <- list(c(1,2, 3), 3:7)
list3

theDF <- data.frame(First=1:5, Second=5:1, 
                    Sport=c("Hockey", "Lacrosse", "Football", "Curling", "Tennis"),
                    stringsAsFactors = FALSE)

theDF

list4 <- list(theDF, 1:10)
list4

list5 <-list(theDF, 1:10, list3)
list5

#name the list elements
names(list5)
names(list5) <- c("data.frame", "vector", "list")
list5

#create the list with the names of element
list6 <-list(TheDataFrame=theDF, TheVector=1:10, TheList=list3)
names(list6)

list6

#usually creating the empty list and add things later.
emptylist <- vector(mode="list", length=4)
emptylist

#set the first element
emptylist[[1]] <- 5
emptylist

#subset of list
list5[[1]]
names(list5)

#one can use the names of the index instead of the index to retrieving by numeric index
list5[["data.frame"]]

#the dot notation is allowed so once the data frame arrives one may proceed with $ sign to fetch more attributes
class(list5[["data.frame"]])

list5[["data.frame"]]$Sport
list5[[1]]$Sport
list5[[1]]

#don't forget to put quotes around the column names this returns the vector
list5[[1]][, "Second"]

#to preseve the above as a dataframe
list5[[1]][, "Second", drop=FALSE]

#length of the list
length(list5)
NROW(list5)

#to add another element in the list
list5
list5[[4]] <- 2

list5[["NewElement"]] <- 3:6

names(list5)
#CAUTION!! Usually extending list length after the specifying the length is frowned upon
#hence avoid it if possible
