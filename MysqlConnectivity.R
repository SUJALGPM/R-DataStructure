#*****************************************MYSQL-DATABASE*****************************************

# Note: R can connect easily to many relational databases like Mysql, Oracle, SqlServer,etc.
# Note: To connect and perform crud operation with Mysql database. We have to install some packages like "RMySQL".


#*****************************************Create-Connection*****************************************

# Note: To work with Mysql database, it required to create connnection object between R and database.
# Note: For creating connection, R provides dbConnect() funciton.
# Note: This function take 5 parameters.
# Note: Syntax> dbConnect(MySQL(),user="",password="",dbname="",host="")

con<-dbConnect(MySQL(),user="root",password="2006",dbname="team",host="localhost")

# Note: After successfull connection we can listout the tables in that database using dbListTables() function.
dbListTables(con)


#*****************************************CRUD-OPERATION*****************************************

# Note: There are lots of operation like select,create,update,delete,insert,drop,select with clause,etc..


#*****************************************Select-Operation*****************************************

# Theory :-
# Note: Basically we have to functions to send query and get result.
# Note: dbSendQuery() = It is used to send query only.
# Note: fetch() = It is used to get result.

result<-dbSendQuery(con,"Select * from student")
data<-fetch(result,n=3) # n=3 means it will print starting 3 rows
result<-dbSendQuery(con,"select * from student where sfees>8000")
result<-dbSendQuery(con,"select MAX(sfees) from student")
result<-dbSendQuery(con,"select MIN(sfees) from student")
result<-dbSendQuery(con,"select SUM(sfees) from student")
result<-dbSendQuery(con,"select count(*) from student")
result<-dbSendQuery(con,"select AVG(sfees) from student")
result<-dbSendQuery(con,'select * from student where sname LIKE "s%"')
result<-dbSendQuery(con,'select * FROM student WHERE scourse IN ('java','react')')
result<-dbSendQuery(con,'select * from student order by sfees desc')
data<-fetch(result)


#*****************************************Create-Operation*****************************************

emp.data<- data.frame(    
  name = c("Raman","Rafia","Himanshu","jasmine","Yash"),    
  salary = c(623.3,915.2,611.0,729.0,843.25),     
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11","2015-03-27")),  
  dept = c("Operations","IT","HR","IT","Finance"),    
  stringsAsFactors = FALSE    
)   

dbWriteTable(con,name="team1",value=emp.data[,],overwrite=TRUE)


#*****************************************Insert-Operation*****************************************

# Note: To insert new data we use 2 basic function dbSendQuery() and fetch().

result<-dbSendQuery(con,'Insert into student values(5,"abbas","mern",6000,"mumbra")')

a1<-dbSendQuery(con,"Select * from student")
a2<-fetch(a1)


#*****************************************Update-Operation*****************************************

result<-dbSendQuery(con,"UPDATE student SET sfees=1000 WHERE sID=5")
a1<-dbSendQuery(con,"Select * from student")
a2<-fetch(a1)
a2


#*****************************************Delete-Operation*****************************************

result<-dbSendQuery(con,"delete from student where sID=5")
a1<-dbSendQuery(con,"Select * from student")
a2<-fetch(a1)


#*****************************************Drop-Operation*****************************************

result<-dbSendQuery(con,'DROP table if exists team1')
dbListTables(con)

result<-dbSendQuery(con,'DROP database if exists book')
