n <- as.integer(readline(prompt = "enter the number: "))
empid <- vector(mode = "integer", length=n)
empname <- vector(mode = "character", length=n)
doj <- vector(mode = "character", length=n)
dept <- vector(mode = "character", length=n)
desig <- vector(mode = "character", length=n)

print("enter empid")
for(i in 1:n)
  empid[i] <- as.integer(readline())

print("enter empname")
for(i in 1:n)
  empname[i] <- as.character(readline())

print("enter date of joining")
for(i in 1:n)
  doj[i] <- as.character(readline())

print("enter department")
for(i in 1:n)
  dept[i] <- as.character(readline())

print("enter designation")
for(i in 1:n)
  desig[i] <- as.character(readline())


emp <- data.frame(empid,empname,doj,dept,desig)
print(emp)

write.csv(emp, file ="C:/Users/mishr/OneDrive/Desktop/emp1.csv")

read.csv(file ="C:/Users/mishr/OneDrive/Desktop/emp1.csv")

x = data.frame(1,"Aryan","30","tech","manager")

write.table(x,file ="C:/Users/mishr/OneDrive/Desktop/emp1.csv", append = TRUE, row.names = FALSE, col.names = FALSE, sep = " ", eol = "\n", quote=FALSE)

read.csv(file ="C:/Users/mishr/OneDrive/Desktop/emp1.csv")
