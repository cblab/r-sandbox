# some sample data
carinsurance <- c(16, 9, 13, 5, 2, 17, 14)
foodrecommendation <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(carinsurance, foodrecommendation), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13
#[,1]  [,2]  [,3]  [,4]  [,5]  [,6]  [,7]
#[1,] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
#[2,] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE


# When is views less than or equal to 14?
views <= 14
#[,1] [,2] [,3]  [,4] [,5]  [,6] [,7]
#[1,] FALSE TRUE TRUE  TRUE TRUE FALSE TRUE
#[2,] FALSE TRUE TRUE FALSE TRUE  TRUE TRUE


# How often does carinsurance equal or exceed foodrecommendation times two?
sum(carinsurance >= foodrecommendation*2)
#[1] 1