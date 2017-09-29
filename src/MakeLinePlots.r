#Make line plots

# Use the economics data

head(economics)

ggplot(economics, aes(x=date, y=pop)) + geom_line()

#lubridate is a package in R for date manipulation
require(lubridate)
#to add new columns like year and month to the economics data
economics$year <- year(economics$date)
economics$month <- month(economics$date) # This makes the month a number

head(economics)

#now find the rows where year is greater than 2000
econ2000 <- economics[which(economics$year >= 2000), ]

nrow(econ2000)
nrow(economics)

# to give the month a label
econ2000$month <- month(econ2000$date, label = TRUE) 
head(econ2000)

#Make line graph with more better visualization and better data points spreadout
require(scales)
g <- ggplot(econ2000, aes(x=month, y=pop))
g <- g + geom_line(aes(color=factor(year), group=year))
g
g <- g + scale_color_discrete(name="Year")
g <- g + scale_y_continuous(labels=comma)
g <- g + labs(title="Population Growth", X="Month", Y="Population")
g
g <- g + theme(axis.text.x = element_text(angle=90, hjust=1))
g
