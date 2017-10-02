hello.person <- function(first, last, ...)
{
  print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared", "Lander")
do.call("hello.person", args=list(first="Jared", last="Lander"))
do.call(hello.person, args=list(first="Jared", last="Lander"))

#running a function on a list or vector of numbers
run.this <- function(x, func=mean)
{
  do.call(func, args=list(x))
}

run.this(1:10)
run.this(1:10, mean)
run.this(1:10, sum)
run.this(1:10, sd)
