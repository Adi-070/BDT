n <- as.integer(readline(prompt = "enter number of students: "))
usn <- vector(mode = "integer", length=n)
name <- vector(mode = "character", length=n)
marks <- vector(mode = "integer", length=n)

print("enter usn")
for(i in 1:n)
  usn[i] <- as.integer(readline())

print("enter name")
for(i in 1:n)
name[i] <- as.character(readline())

print("enter marks")
for(i in 1:n)
  marks[i] <- as.integer(readline())

student <- data.frame(usn,name,marks)
print(student)

age <- vector(mode="integer", length=n)

print("enter age")
for(i in 1:n)
  age[i] <- as.integer(readline())

student <- cbind(student,age)
print(student)

for(i in 1:n)
  if(student[i,][3] > 11)
    if(student[i,][4] > 1)
      print(student[i,])
