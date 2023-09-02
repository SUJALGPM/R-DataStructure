#Factors In R DataStructure................

#Create Factor using factor()
a<-c("red","green","orange",'violet',"yellow","blue")
data<-factor(a)

b<-c("Male","Female","Male","Female","Female")
data1<-factor(b)

#Accessing element from factor...
data[-1]
data[5]
data[1:5]

#Update factors and factors levels...
data<-factor(a,levels=c("blue","green","red","violet","book","yellow","orange"))
data[4]<-"black"

levels(data1)<-c("M","F")

#Delete data from factor....
data[-3]
data[-2:-4]
data[-1:-4]
data[c(-1,-4)]

#Remaining function in Factor...
typeof(data)
class(data)
is.factor(data)
length(data)
levels(data)

#Creating factors using gl() in R
sum<-gl(4,2,labels=c("sujal","shreeya","Faisal","Harsha"))
sum

#Create factor having 3 levels manaully.....
data<-factor(c("male","female","male","female"),levels = c("female","male","transgender"))
data

#Check the levels is set or not.....
levels(data)

#Now try to add data in existing levels....
append(data,"trio",after = 4)

append(data,"transgender",after=4)

#Levels is predefine so you can add value of that only...
data[5]<-"transgender"

data[6]<-"trio"

data[6]<-"transgender"

data[-7]
