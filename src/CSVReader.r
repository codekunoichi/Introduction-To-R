tomato <- read.table(file="data/Tomato First.csv", header=TRUE, sep=",")
head(tomato)

# since its computationally expensive to make the data loaded from string to a factor
# by default the csv load will turn them into factors
class(tomato$Tomato) #returns factor

#to change the factor type to strins after load is computationally expensive
# so add the stringsAsFactors=FALSE while loading

tomato <- read.table(file="data/Tomato First.csv", header=TRUE, sep=",", stringsAsFactors = FALSE)
class(tomato$Tomato) #returns character - CSV Reading did not by default turn it into a factor

#separator can be anything
#use sep="\t" for tab separated values

#another way to load data from csv is rad.csv2

tomato <- read.csv2(file="data/Tomato First.csv", header=TRUE, sep=",")