library(DBI)
con <- dbConnect(RMySQL::MySQL(), user="user", password="password", dbname="dbname", host="localhost")
rs <- dbGetQuery(con, 'set character set utf8')
dbListTables(con)
rs <-dbSendQuery(con, "select * from adsense_keywords limit 10;")
data <-fetch(rs, n=10)
huh <-dbHasCompleted(rs)
print(data)
dbClearResult(rs)
dbDisconnect(con)