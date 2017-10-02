#Add themes to graphs
require(ggplot2)
require(ggthemes)

g < ggplot(diamonds, aes(x=carat, y=price, color=color))