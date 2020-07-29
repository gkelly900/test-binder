library(RSQLite)

con <- dbConnect(SQLite(), dbname = "TestDb.db")
df <- dbGetQuery(con,"select * from people")
