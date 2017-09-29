#install RMySQL Package
require(RMySQL)

# Instead of typing the password in clear text, encrypt using local OS encryption.
# I use a mac hence created the username/password in Key Chain Access and used it.
# Install keyringr package to decrypt the password and use it.

require(keyringr)

# Read more here: https://cran.r-project.org/web/packages/keyringr/vignettes/Avoiding_plain_text_passwords_in_R_with_keyringr.html

mypwd <- decrypt_kc_pw("localmysqldb_root")

#create connection
mydb <- dbConnect(MySQL(), user="root", password=mypwd, dbname="Synthea", host="127.0.0.1") 
#on.exit(dbDisconnect(mydb))
dbListTables(mydb)
dbListFields(mydb, 'ALLERGY')
rs <- dbSendQuery(mydb, "select * from allergy limit 2")

data <- fetch(rs, n=-1)
head(data)

# Its important to close the resultset and connection https://www.r-bloggers.com/mysql-and-r/
dbClearResult(rs)
dbDisconnect(mydb)

longQuery <- "select distinct careplan_code, careplan_description, reason_code, reason_description from careplan order by reason_code desc"

longQuery

mydb = dbConnect(MySQL(), user="root", password=mypwd, dbname="Synthea", host="127.0.0.1")

rs <- dbSendQuery(mydb, longQuery)

data <- fetch(rs, n=-1)
head(data)

dbClearResult(rs)
dbDisconnect(mydb)
