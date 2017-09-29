require(ggplot2)

#histogram and density plots are quick way to see the variation of single variable value in a data set

#histogram
ggplot(data=diamonds) + geom_histogram(aes(x=carat))
ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth = 0.5)

ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth = 0.1)

ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth = 0.01)

ggplot(data=diamonds) + geom_histogram(aes(x=carat), binwidth = 0.7)

#density plot
ggplot(data=diamonds) + geom_density(aes(x=carat))
ggplot(data=diamonds) + geom_density(aes(x=carat), fill="grey50")
