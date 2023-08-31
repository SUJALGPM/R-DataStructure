#List in R 
#Logical/character/boolean list

#Create List in R...
fruit<-list("red","orange","purple","violet","yellow","white","black","green")
fruit

rowname=c("sujal","shreeya","harsha","faisal")
colname=c("java","dbms",'awd',"ngd")
combo<-list(c(1,2,3,4),matrix(c(1:16),nrow = 4,ncol = 4,dimnames = list(rowname,colname)),list("red","blue","orange","yellow"))
combo

names(combo)<-c("Data1","Data2","Data3") #Naming using names()
combo

combo1<-list("Sujal",95,TRUE,"Kunbi",5.5L,22.2)
combo1

#Append function function in List
append(fruit,"lightgreen")
append(fruit,"blue",after = 3)


#Extract form list...
combo[1]
combo[2]
combo[[2]]
combo$Data1[4]
combo$Data2[2,3]
combo$Data2[c(1,2),c(1,2)]
combo$Data2[c(1,4),c(1,4)]
combo$Data2[,3]
combo$Data2[c(1,3),c(2,4)]
combo[["Data2"]][,"awd"]
combo$Data2[,2]
combo[["Data2"]][c(2,3),"awd"]

#Update data in List
combo$Data1[2:4]<-5
combo$Data1[3]<-4
combo$Data2[2,2]<-5
fruit[8]<-"piwla"
fruit[c(1,8)]<-"black"

#Delete data from list
combo[["Data2"]][,"awd"]<-NA
combo$Data2[2,2]<-5
combo["Data1"][1]<-NA
fruit[-6]
fruit[8]<-NA
fruit[c(-1,-8)]
fruit[8]<-NULL
combo$Data2[,-3]
combo[["Data2"]][3,3]<-NA
combo$Data2[2,2]<-NA

#Remaining function in List
typeof(fruit)
typeof(combo)
length(combo)
length(combo[[2]])
typeof(fruit[[2]])
typeof(combo[[1]])

#Convert list to vector
vector<-unlist(fruit)
typeof(vector)

#Operator = %in% To check item is present or not....
fruit
"yellow" %in% fruit
"blue" %in% fruit
