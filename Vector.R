#Vectors in R.....

#********************************CREATE VECTORS************************************

#1. Create using c()
a<-c("sujal","shreeya","harsha","faisal")

#2. Create using seq()
b<-seq(from=1,to=15,by=2)

#3. Create using operator(:)
c<-1:10

#4. Create using assign()
assign("d",c("orange","yellow","green","red"))

#5. Rep() function in vector
e<-rep(c("orange","green","red","blue"), times=2, each=2)


#*****************************ACCESS VECTOR ELEMENT********************************

a[1]
a[c(2,4)]
a[1:3]
a[-1]

#1. Assign name vector...
v1<-c(10,20,30)
names(v1)<-c("first","second","third")
v1[["first"]]

#2. Append value in existing vector...
v2<-c("harsha","shreeya","faisal")
append(v2,"sujal",after=1)


#*******************************UPDATE VECTOR ELEMENT******************************

a[1]<-"sujal"
b[b<3]<-50
add<-c(a,"shadow")
add1<-c(a,"avi",after=5)
add2<-c(a,"partu",after=length(a))


#*******************************DELETE VECTOR ELEMENT******************************

rm(a)
a[c(-1,-3)]
a[1]<-NA
a[-2]
a[-3:-4]
a<-NULL


#*******************************REMAIN VECTOR FUNCTIONS******************************

sort(a)
sort(a,decreasing = TRUE)
is.na(a)
na.omit(a)
class(read1)

#*******************************Additional Function*******************************

#1. Scan Fucntion to read value.
read1<-scan(n=5) #Read 5 integer lines
print(read1)

read2<-scan(what = character(),n=5) #read character value
print(read2)

read3<-scan(what = integer())
print(read3)

read4<-scan(what = "")
print(read4)

#2. Arithmetic Operation.
a<-c(1,2,3)
b<-c(4,5,6)

add<-a+b
sub<-a-b
div<-a/b
mul<-a*b

#3. Recycling Rule.
c<-c(2,4)
f<-c(6,12,8)
c+f

