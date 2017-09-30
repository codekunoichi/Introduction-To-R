# Make boxplot and violin plot with ggplot2
require(ggplot2)

head(diamonds)

#box plot
ggplot(diamonds, aes(y=carat, x= 1)) + geom_boxplot()
ggplot(diamonds, aes(y=carat, x=cut)) +geom_boxplot()

#violin plot
ggplot(diamonds, aes(y=carat, x=cut)) +geom_violin()

g <- ggplot(diamonds, aes(y=carat, x=cut)) 
g
g+ geom_violin()

#The order the layers are added matters - violing first, point will be overlayed on top of it.
g + geom_violin() + geom_point()

# The points will be behind the violin plot
g + geom_point() + geom_violin()

g + geom_jitter() + geom_violin()

