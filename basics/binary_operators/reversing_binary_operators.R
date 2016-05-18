x <- 8
y <- 5

!(!(x < 3) & !!!(y > 14))
# !(!(x < 4) -> FALSE
# !!!(y > 12)) -> TRUE
# FALSE & TRUE -> FALSE