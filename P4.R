df <- airquality
dim(df)

sapply(df,class)

col <- colSums(df)
print(col)

print("The missing values are: ")
x <- colSums(is.na(df))
print(x)

which(is.na(df))
sum(is.na(df))

df1 <- as.data.frame(df)
for(i in 1:6)
  df1[i] <- ifelse(is.na(df[,i]),mean(df[,i],na.rm=TRUE),df[,i])

df1
