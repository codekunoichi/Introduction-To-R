# Adding more colors and shape to the graphics
# Important point to remember - even it looks pretty the clutter of information is hard to process by human mind
# aim for simple/intuitive visualization.

g <- ggplot(diamonds, aes(x=carat, y=price, color=color, shape=cut, size=depth))
g + geom_point()
