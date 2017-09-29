#scatter plot is most commonly used graph in statistics
# it plots many points in a graph, each point represents x axis and y axis value

plot(diamonds$carat, diamonds$price)

plot(price ~ carat, data=diamonds)

plot(price ~ carat, data=diamonds, main="Price vs Carat")
