a <- c(1, 1, 0, 1)
b <- c(2, 1, 0, 1)

# & The shorter form performs elementwise comparisons in
# much the same way as arithmetic operators.
# each pair is evaluated and hence all the index results are printed when the following executes.
ifelse(a==1 & b== 1, "Yes", "No")

# && The longer form
# evaluates left to right examining only the first element of each
# vector.  Evaluation proceeds only until the result is determined.
# only the first pair is evaluated
ifelse(a==1 && b== 1, "Yes", "No")

#https://stackoverflow.com/questions/6558921/r-boolean-operators-and

a <- c(1, 1, 1, 1, 0, 1)
b <- c(1, 1, 2, 1, 0, 1)
ifelse(a==1 && b== 1, "Yes", "No")

ifelse(a==1 || b== 1, "Yes", "No")

# compound ifelse example
a <- c(1, 1, 0, 1)
b <- c(2, 1, 0, 1)
ifelse(b == 1, "Hi", ifelse(b == 0 , "Hello", "Goodbye"))
