ifelse(1 == 1, "Yes", "No")

ifelse(1 == 0, "Yes", "No")

# the ifelse can work on each element, use it for vector element checks instead of simple one time checks

toTest <- c(1, 1, 0, 1, 0, 1)
ifelse(toTest == 1, "Yes", "No")

# can do math on each element
ifelse(toTest == 1, toTest * 3, toTest)

# Take away to note, when running the following
# all elements of the vector are turned in chacter 
# since "zero" was added to few elements
ifelse(toTest == 1, toTest*3, "Zero")

# explore how NA morphs the ifelse
toTest[2] <- NA

toTest

# where vector element was NA, remains the NA missing data can disappear if else was executed.
# soo to preserve "i don't know what to do with this, NA is intrepreted as NA and hence remains as NA"
# after the ifelse executes
ifelse(toTest == 1, toTest*3, "zero")
