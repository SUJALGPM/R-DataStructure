#Matrix in R 

#Create matrix in R
row_name=c("java","dbms","awd","ngd")
col_name=c("sujal","faisal","harsha","shreeya")
data<-matrix(c(1:16),nrow = 4,ncol = 4,byrow = TRUE,dimnames = list(row_name,col_name))


#Extract data from matrix
data[3,2]
data[,1]
data[,1:2]
data[c(2,3),]
data[c(1,4),c(3,4)]

#Update data in matrix[Relational operator]
data[2,4]<-20
data[3:4,c(2,3)]<-11
data[data==11]<-12
data[data>5]<-2
data[data<5]<-10
data[data!=5]<-9
data[data%%2==0]<-5

#New rows add....
r1<-c(11,12,13,14)
new<-rbind(data,react=r1)
new

#New column add.....
c1<-c(10,20,30,40)
new1<-cbind(new,abbas=c1)
new1

#Merge 3 matrix by row-wise or col-wise
rbind(a,b)
cbind(a,b)

#Tranporse() Function...swap value
#row will take col space
#col will take row space
t(new)

#Increase Dimension of matrix
dim(new1)<-c(1,24)
new1

#Deleting element from matrix
new1[,-5]
new1[,-4:-5]
new1[c(-2,-4),c(-2,-3)]
new1[,5]<-NA
is.na(new1)

#Martrix Arithmetic Operator...
a<-matrix(c(5:20),nrow = 4,ncol = 4)
b<-matrix(c(1:16),nrow = 4,ncol = 4)

#Addition....
sum<-a+b
print("Result of Addition","\n")
sum

#Subtact
sub<-a-b
print("Result of Subtract","\n")
sub

#Division
div<-a/b
print("Result of Division","\n")
div

#Multiplcation
mul<-a*b
print("Result of Mutiplication","\n")
mul

#Matrix Remaining Functions
dim(a)
dim(b)
str(a)
str(b)
length(a)
length(b)
nrow(a)
ncol(a)
rowSums(new1)
colSums(new1)
min(new1)
max(new1)
is.matrix(new1)
