#*****************************************ODBC-Connectivity*****************************************

#Note: odbc stands for open database connectivity.
#Note: It allows for an efficient, easy way to setup connection to any database using an ODBC driver, including SQL Server, Oracle, MySQL, PostgreSQL, SQLite and others.
#Note: The ODBC package uses the DBI package to connect to the database. DBI is a common interface between R and DBMS systems.
#Note: You’ll need to install both the 'DBI' and the 'odbc' packages and load them into your environment.
#Note: Some steps to configure the drivers setup than we easliy connect with database.
#Note: Step1-Go to controll panel.
#      Step2-Search for administrator tools.
#      Step3-Now search for odbc-64 double click on.
#      Step4-Create an new data source ANSI an put our details
#      Step5-Use that created odbc driver for connection directly.

#*****************************************Install-Packages*****************************************
install.packages('odbc')
install.packages("RODBC")
install.packages('DBI')

library('odbc')
library('DBI')
library('RODBC')

#*****************************************Connection-ODBC*****************************************
con<-odbcConnect('source')

#*****************************************Import-Database*****************************************
data<-sqlQuery(con,"Select * from student")

#*****************************************Export-Database*****************************************
dataframe<-data.frame(id=c(1,2,3,4),name=c("sujal","shreeya","harsha","faisal"),dpt=c("comp","leather","rubber","AI"))
sqlSave(dataframe, tablename = "Newtable", rownames = FALSE)

#*****************************************Crud-Operation*****************************************

# 1.Read command....
sqlQuery(con,'Select * from student')
sqlQuery(con,"Select count(*) from student")
sqlQuery(con,"Select * from student where id<5")
sqlQuery(con,"Select MAX(sfees) from student")
sqlQuery(con,"Select MIN(sfees) from student")
sqlQuery(con,"Select AVG(sfees) from student")
sqlQuery(con,"Select SUM(sfees) from student")
sqlQuery(con,"Select * from student where name like 's%")
sqlQuery(con,"Select * from student order by sfees desc")

# 2.Insert command....
sqlQuery(con,"Insert into student values(1,'sujal','rubber')")

# 3.Update command....
sqlQuery(con,"Update student set name='shadow' where id=1")

# 4.Delete command....
sqlQuery(con,"Delete from student where id<3")

# 5.Drop table command....
sqlQuery(con,"DROP table if exists student")

# 6.Drop database or delete command....
sqlQuery(con,"Drop database if exists source")