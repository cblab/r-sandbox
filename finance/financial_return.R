# Starting cash and returns 
starting_cash <- 200
jan_ret <- 4
feb_ret <- 5

# Multipliers
jan_mult <-  1 + (jan_ret / 100)
feb_mult <-  1 + (feb_ret / 100)

# Total cash at the end of the two months
total_cash <- jan_mult * feb_mult * starting_cash

# Print total_cash
total_cash