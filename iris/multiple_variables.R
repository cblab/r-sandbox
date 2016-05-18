# covariance and correlation between sepal length and petal length
#
# Covariance is a measure of how changes in one variable are associated with changes in a second variable.
# Specifically, covariance measures the degree to which two variables are linearly associated.
# However, it is also often used informally as a general measure of how monotonically related two variables are.
cov(iris$Sepal.Length, iris$Petal.Length)
#[1] 1.274315


# Correlation is a statistical technique that can show whether and how strongly pairs of variables are related. 
# For example, height and weight are related; taller people tend to be heavier than shorter people.
# e.g. Petal.Width and Petal.Length are close to 1 (0.9628654), 
#      we can conclude that the variables are positively linearly related. 
cor(iris[,1:4])
#             Sepal.Length Sepal.Width Petal.Length Petal.Width
#Sepal.Length    1.0000000  -0.1175698    0.8717538   0.8179411
#Sepal.Width    -0.1175698   1.0000000   -0.4284401  -0.3661259
#Petal.Length    0.8717538  -0.4284401    1.0000000   0.9628654
#Petal.Width     0.8179411  -0.3661259    0.9628654   1.0000000


# computing the stats of Sepal.Length of every species with aggregate().
aggregate(Sepal.Length ~ Species, summary, data=iris)
#    Species        Sepal.Length.Min. Sepal.Length.1st Qu. Sepal.Length.Median Sepal.Length.Mean Sepal.Length.3rd Qu. Sepal.Length.Max.
#     setosa             4.300                4.800               5.000             5.006                5.200             5.800
# versicolor             4.900                5.600               5.900             5.936                6.300             7.000
#  virginica             4.900                6.225               6.500             6.588                6.900             7.900

#plotting a box-and-whisker plot 
# show the median, first and third quartile of a distribution (i.e., the 50%, 25% and 75% points in
# cumulative distribution), and outliers. The bar in the middle is the median. The box shows the
# interquartile range (IQR), which is the range between the 75% and 25% observation.
boxplot(Sepal.Length~Species, data=iris)