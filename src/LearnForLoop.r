# Learn for loop

for(i in 1:10)
{
  print(i)
}

print(1:10)

fruit <- c("apple", "banana", "pomegranate")
fruitLength <- rep(NA, length(fruit))
fruitLength
names(fruitLength) <- fruit
fruitLength

for(a in fruit)
{
  fruitLength[a] <- nchar(a)
}

fruitLength

#a hangs around, last value of a
a

fruitLength2 <- nchar(fruit)
fruitLength2
names(fruitLength2) <- fruit
fruitLength2

identical(fruitLength, fruitLength2)
