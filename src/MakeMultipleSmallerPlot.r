#create small multiples

# break up the same line plot into smaller plots for specific color.

# if you remember for the line plot we had added aesthetics of colored dots, now we will break it up into individual smaller plots of color
g <- ggplot(diamonds, aes(x=carat, y=price))
g <- g + geom_point(aes(color=color)) + facet_wrap(~color)
g

g + geom_point(aes(color=color)) + facet_grid(cut~clarity)

#small multiples of histogram
ggplot(diamonds, aes(x=carat)) + geom_histogram() + facet_wrap(~color)
