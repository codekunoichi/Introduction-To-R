require(ggplot2)
data("diamonds")
head(diamonds)

#to create histograms.
# histogram = chops the variable into buckets and plots the relative frequency of each bucket similar to a bar chart
hist(diamonds$carat)

hist(diamonds$carat, main="Carat Histogram", xlab="Carat")
