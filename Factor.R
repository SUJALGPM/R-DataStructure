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
