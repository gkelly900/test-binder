library(RSQLite)

con <- dbConnect(SQLite(), dbname = "TestDB.db")
df <- dbGetQuery(con,"select * from people")
