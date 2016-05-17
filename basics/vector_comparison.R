# comapring page views of two websites
carinsurance <- c(17, 10, 14, 4, 1, 16, 15)
foodrecommendation <- c(18, 9, 3, 18, 1, 12, 13)

# Days with more than 15 views
carinsurance > 15
#[1]  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE

# # Days with less than 5 views
carinsurance <= 5
#[1] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE

# carinsurance more popular than foodrecommendation?
carinsurance > foodrecommendation
#[1] FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE
# FALSE