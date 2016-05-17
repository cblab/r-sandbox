# iris from the datasets package

# reveal number of observations and variables in two different ways
str(iris)
dim(iris)

# show first and last observations in the iris data set
head(iris)
tail(iris)

# show first five observations in the iris data set
iris[1:5,]
#Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#1          5.1         3.5          1.4         0.2  setosa
#2          4.9         3.0          1.4         0.2  setosa
#3          4.7         3.2          1.3         0.2  setosa
#4          4.6         3.1          1.5         0.2  setosa
#5          5.0         3.6          1.4         0.2  setosa

# summarize the iris data set
summary(iris)

# show feature names
names(iris)
#[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"

# show iris attributes
attributes(iris)
#$names
#$row.names
#$class
