# Every thing is true
#TRUE & TRUE
#FALSE | TRUE
#6 <= 6 & 1 < 4
#2 < 5 | 8 < 3

# The pageviews and last variable are already defined for you
pageviews <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(pageviews, 1) #14

# Is last under 5 or above 10?
last < 5 | last > 10
# TRUE because FALSE | TRUE

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20
# FALSE because FALSE & TRUE

# Is last between 0 and 5 or between 10 and 15?
(last > 0 & last < 5) | (last > 10 & last < 15)
# TRUE because FALSE | TRUE