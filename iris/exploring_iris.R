# iris from the datasets package -> https://en.wikipedia.org/wiki/Iris_flower_data_set

# reveal number of observations and variables in two different ways
str(iris)
#'data.frame':	150 obs. of  5 variables:
#  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
#$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
#$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
#$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
#$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...


dim(iris)
# [1] 150   5

# show first five observations in the iris data set
iris[1:5,]
#Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#1          5.1         3.5          1.4         0.2  setosa
#2          4.9         3.0          1.4         0.2  setosa
#3          4.7         3.2          1.3         0.2  setosa
#4          4.6         3.1          1.5         0.2  setosa
#5          5.0         3.6          1.4         0.2  setosa

# show first and last observations in the iris data set
head(iris)
#     Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#1          5.1         3.5          1.4         0.2    setosa
#2          4.9         3.0          1.4         0.2    setosa
#3          4.7         3.2          1.3         0.2    setosa
#4          4.6         3.1          1.5         0.2    setosa
#5          5.0         3.6          1.4         0.2    setosa
#6          5.4         3.9          1.7         0.4    setosa

# show the last observations in the iris data set
tail(iris)

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

quantile(iris$Sepal.Length)
# 0%   25%  50%  75%  100%
# 4.3  5.1  5.8  6.4  7.9 

quantile(iris$Sepal.Length, c(.1, .3, .65))
# 10%  30%  65% 
# 4.80 5.27 6.20 

# variance
var(iris$Sepal.Length)
# [1] 0.6856935

# histogram
hist(iris$Sepal.Length)

# density
# In probability theory, a probability density function (pdf), 
# or density of a continuous random variable, is a function that describes 
# the relative likelihood for this random variable to take on a given value.
# e.g. the probability that sepal length is seven is about 15%
plot(density(iris$Sepal.Length))

# frequency
table(iris$Species)
#setosa versicolor  virginica 
#50         50         50

# visualizing species frequency as pie chart
pie(table(iris$Species))

# visualizing species frequency as bar plot
barplot(table(iris$Species))