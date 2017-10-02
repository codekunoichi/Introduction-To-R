say.hello <- function()
{
  print("Hello World!")
}

say.hello
say.hello()

sprintf("hello %s", "Jared")

sprintf("hellp %s, today is %s", "Jared", "Sunday")

sprintf("hellp %s, today is %s", "Jared", "Saturday")

hello.person <- function(name)
{
  sprintf("hello %s", name)
}

hello.person("Jared")
hello.person("Sarah")

hello.person <- function(first, last)
{
  print(sprintf("Hello %s %s", first, last))
}

hello.person

# the argument is going positionally hence 1st argument mapped to first, and second goes with lander
hello.person("Jared", "Lander")

# named argument matches by argument name.
hello.person(last="Lander", first="Jared")
hello.person("Jared", last="Lander")
hello.person(last="Lander", "Jared")

hello.person <- function(first, last="Doe")
{
  print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared", "Lander")
hello.person("Jared")

#what happens if wrong parameter name? - compilation error
# use correct names of argument and correct number of arguments

#multiple arguments with ...
hello.person <- function(first, last="Doe", ...)
{
  print(list(...))
  s <- sprintf("Hello %s %s", first, last)
  s <- paste(s , list(...)$bye,  sep = " ")
  print(s)
  print(list(...)$bye)
  print(list(...)[1])
}

hello.person("Jared", "Lander", bye="Goodbye")
hello.person("Jared", "Holmes", "Goodbye")

# In R by default if the function last line evaluates a value, it will be returned

double.num <- function(x)
{
  x * 2
}

double.num(5)

# One can specify the return statement as well.
double.num <- function(x)
{
  return (x * 2)
}

double.num(6)
