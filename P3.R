data()
m=mtcars
head(m)


c=ncol(m)
r=nrow(m)

print("row =")
print(r)

print("cols =")
print(c)

am=0
man=0

for(i in 1:r)
{
  if(m[i,][9]==1)
    am=am+1
  
  else
    man=man+1
}

if(am>man)
  print("am more") else


print("man more")

require(graphics)
with(m,scatter.smooth(hp,wt))

am <- as.integer(m$am)
cyl <- as.integer(m$cyl)
vs <- as.integer(m$vs)

car<- data.frame(am,cyl,vs)
print(car)

sb <- subset(m,cyl<5)
print(sb)
