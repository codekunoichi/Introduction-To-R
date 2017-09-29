#many R packages have included data already into many packages it has

require(ggplot2)
data(diamonds)
head(diamonds)

data("tips", package="reshape2")
head(tips)

#to see what data is available to you, use
data()
