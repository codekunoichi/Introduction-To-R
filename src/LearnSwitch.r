#switch statement

use.switch <- function(x)
{
  switch(x,
         "a"="First",
         "b" = "Second",
         "z" = "last",
         "c" = "third",
         "other")
}
use.switch("a")
use.switch("kl") # outputs "other"
#using number allows you to override the value setting by positional setting.
# example "Z variable is in the 3rd position
use.switch(3) #outputs "last"
use.switch(5)

use.switch(6) # return nothing
is.null(use.switch(6))
