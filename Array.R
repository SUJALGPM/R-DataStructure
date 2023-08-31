#Array in R dataStructure......

#Create Array....
a1<-c(1,2,3,4)
b1<-c(5,6,7,8)
c1<-c(9,10,11,12)
new<-array(c(a1,b1,c1),dim=c(2,2,3)) #basic

rowname=c("row1","row2","row3")
colname=c("col1","col2","col3")
data<-array(c(1:36),dim=c(3,3,4),dimnames = list(rowname,colname))

#Accessing Array Element...
data[3,1,4]
data[3,2,2]
data[,1,4]
data[1,,4]
data[c(1,3),,4]
data[,c(2,3),]
data[c(1,2),c(2,3),4]

#Update Array Element...
data[3,3,4]<-36
data[data==36]<-40
data[data>33]<-36
data[data!=33]<-2
data[data%%2==0]<-5

#Delete Array Element...
data[3,3,4]<-NA
data[-3,-3,4]

#Aritmethic Operation....
a<-array(c(1:4),dim = c(2,2))
b<-array(c(5:8),dim = c(2,2))
c<-array(c(9:12),dim = c(2,2))

add<-a+b+c
print("Result of Addition")
add

sub<-a-b-c
print("Result of Subtraction")
sub

div<-a/b/c
print("Result of Division")
div

mul<-a*b*c
print("Result of Multiplication")

#Basic functions....
a&b
sum(a)
min(b)
max(a)

#Additional Operation.....
end<-array(c(1:4),dim=c(2,2,2))
end[,,1]+end[,,2]


#Remaining Functions in Array...
typeof(data)
length(data)
dim(data)
nrow(data)
ncol(data)
class(data)
rank(data)
sum(data)
rowSums(data)
colSums(data)
min(data)
max(data)

#Operator to check present or not....
36 %in% data
73 %in% data

# Traverse array like list....
for(x in data){
  print(x)
}

