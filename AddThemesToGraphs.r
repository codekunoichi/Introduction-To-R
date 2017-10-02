#Add themes to graphs
require(ggplot2)
require(ggthemes)

g <- ggplot(diamonds, aes(x=carat, y=price, color=color)) + geom_point()
g

#add WSJ Theme
g + theme_wsj()

#add economist theme
g + theme_economist() + scale_colour_economist()

#minimalist edward tufte
g + theme_tufte()

# to give appearance of graph came from excel
g + theme_excel() + scale_color_excel()
