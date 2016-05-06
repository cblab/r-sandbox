a <- 1:10
save(a, file="~/R/r-sandbox/iris/data/mydata.Rdata")
rm(a) # delete a object
load("~/R/r-sandbox/iris/data/mydata.Rdata")
print(a)
#[1]  1  2  3  4  5  6  7  8  9 10
