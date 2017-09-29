require(ggplot2)

# scatter plot
ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

#to short cut all the typing, save the ggplot function call to a variable

g <- ggplot(diamonds, aes(x=carat, y=price))

g

g + geom_point()

#add another variation in each point - color code the point with diamonds color
g + geom_point(aes(color=color))

#add another layer of identification to the points, each point is a diamond attribute of price, carat, color

#add clarity
g + geom_point(aes(color=color, shape=clarity))

#since clarity has too many variation R gives a warning message:
#Warning messages:
#  1: The shape palette can deal with a maximum of 6 discrete values because more than 6 becomes
#difficult to discriminate; you have 8. Consider specifying shapes manually if you must have
#them. 
#2: Removed 5445 rows containing missing values (geom_point). 

#add cut less variation

g + geom_point(aes(color=color, shape=cut))
