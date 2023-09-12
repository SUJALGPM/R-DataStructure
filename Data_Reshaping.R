#*****************************************Data-Reshaping*****************************************

#Theory :-

# Note: Data Reshaping is about changing how the data is organized into rows and columns.
# Note: Data Reshaping can be done in many ways like merging, melting and casting.
# Note: There are two types of format in R first is long data format and Wide data format.
# Note: Wide data format each row of dataframe consist of data in a single entity, and all the details of single entity is organized in columns of dataframe.
# Note: Long data format dataframe consist of multiple rows of a single entity, and all details of that entity is divided into a no of rows.
# Note: Casting is used to convert the long data format into wide data format.
# Note: For melting and casting we need some packages like 'reshape' and 'reshape2'.


#*****************************************Needed-Packages*****************************************
install.packages("reshape")
installed.packages("reshape2")
library("reshape")
library("reshape2")


#*****************************************Melting-Process*****************************************
data<-data.frame(id=c(1,2,3,4,5),name=c("sujal","shreeya","harsha","faisal","abbas"),DAR=c(78,89,75,62,41),MAD=c(45,798,67,32,99))

melt.data<-melt(data,id=c('id','name'),variable='Marks',na.rm = FALSE)

melt.data

#*****************************************Casting-Process*****************************************
cast.data<-cast(melt.data,id+name~Marks)
cast.data
