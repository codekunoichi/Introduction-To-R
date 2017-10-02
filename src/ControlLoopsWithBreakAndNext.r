#next is like continue in other languages
for(i in 1:10)
{
  if (i == 3)
  {
    next
  }
  print(i)
}

for(i in 1:10)
{
  if (i == 5)
  {
    break
  }
  print(i)
}