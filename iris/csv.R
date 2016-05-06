# create dataframe df1 
# save it as .csv file with write.csv()
# load dataframe from file with read.csv()
# csvData.csv has to be touched first 
var1 <- 1:5
var2 <- (1:5)/10 
var3 <- c("R","Machine Learning","Data Mining","Statistics","Analytics")
df1  <- data.frame(var1, var2, var3)
names(df1) <- c("Integers", "Real", "Characters")
write.csv(df1, "~/R/r-sandbox/iris/data/csvData.csv",row.names = FALSE)
df2 <- read.csv("~/R/r-sandbox/iris/data/csvData.csv")
print(df2)