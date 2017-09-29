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
