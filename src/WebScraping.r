# How to read HTML File and get to the first table with no header and load into a data frame with string data and not factors
require(XML)
theURL <- "https://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"

bowlGame <- readHTMLTable(theURL, which=1, header=FALSE, stringsAdFactors=FALSE)
bowlGame
#unsure why there was a XML Warning, did not work..
