# load is a handy function to save multiple data into a rdata file to be loaded later
# this is a neat way of saving intermediary data created along the way of data analysis while data munging
# and come back to where we left off..

tomato <- read.table("data/Tomato First.csv", header=TRUE, sep=",",stringsAsFactor=FALSE)
head(tomato)
save(tomato, file="data/tomcato.rdata")
rm(tomato)
tomato
load("data/tomcato.rdata")
tomato
head(tomato)

#saving multiple data into the data file
n <- 20
r <- 1:10
w <- data.frame(n, r)
w
save(n, r, w, file="data/multiple.rdata")
rm(n, r, w)
n
r
w
load("data/multiple.rdata")
n
r
w

