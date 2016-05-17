# http://www.rdocumentation.org/packages/ISLR
# Mid-Atlantic Wage Data
# Wage and other data for a group of 3000 workers in the Mid-Atlantic region.
library("ISLR")

# Build Linear Model: lm_wage
lm_wage <- lm(wage ~ age, data = Wage)

# Define data.frame: unseen
unseen <- data.frame(age = 45)

# Predict the wage for a 45-year old worker
predict(lm_wage, unseen)
# 1 
# 113.5322 ($ per day)