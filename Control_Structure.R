#Take some inputs to perform control structure....
a<-as.numeric(readline(prompt = "ENTER NUMBER FOR A = "))
b<-as.numeric(readline(prompt = "ENTER NUMBER FOR B = "))
c<-as.numeric(readline(prompt = "ENTER NUMBER FOR C = "))
d<-readline(prompt = "Enter Input Value = ")

#********************************** if-else *************************************

# 1.Check basic If-statement...
if(a>b){
  print("A is greater")
}else if(a>c){
  print("A is greater than all")
}else{
  print("A is smaller")
}

# 2.Check Input data in which form...
if(is.numeric(d)){
  print("Yes input data in integer form")
}

# 3.Check with count value increment...
count=0
if(a<b){
  cat(a,"IS SMALLER")
  count = 1
}else{
  print(B,"is smaller")
}

# 4.If count is increment than print the statement...
if(count==1){
  print('Yes, we done it ')
}

# 5.Check input is even or odd...
if(a%%2==0){
  cat("Even number")
}else{
  cat("Odd number")
}

# 6.Check that name is present or not...
key<-c("Unlock", "your", "success", "with", "determination")
if("success" %in% key){
  cat("Yes there is success")
}else{
  cat("Sorry there is no success")
}

# 7.Check the character is vowel or not...
a = 's'
if(a=='a'||a=='e'||a=='i'||a=='o'||a=='u'){
  cat("Yes it's vowel")
}else{
  cat("Nope isn't vowel")
}


#********************************** while-loop *************************************

# 1.Check Basic while-loop statment...
i=0
while(i<=10){
  print(i)
  i = i + 1
}

# 2.Display Table using while-loop
p<-2
while(i<=10){
  print(paste(p,"*",i,"=",p*i))
  i = i + 1
}

# 3.Display sqrt of 1 to 10 numbers.
i=1
while(i<=10){
  print(sqrt(i))
  i=i+1
}

# 4.Display square of 1 to 10 numbers...
i=1
while(i<=10){
  print(i*i)
  i=i+1
}

#********************************** For-loop *************************************

# 1.Check Basic For-loop...
for(i in 1:10){
  print(i)
}

# 2.Display table of 5 using For-Loop...
m<-5
for(i in 1:10){
  print(paste(m,"*",i,"=",m*i))
}

# 3.Display 1 to 10 number using break statement...
for(i in 1:10){
  print(i)
  if(i==5){
    break
  }
}

# 4.Display 1 to 10 number using next(skip) statement...
for(i in 1:10){
  if(i<5){
    next
  }
  print(i)
}

# 5.Display 1 to 20 number skip 10 to 15 no using next statement...
for(i in 1:20){
  if(i>=10&&i<=15){
    next
  }
  print(i)
}

#********************************** Repeat-loop *************************************

# 1.Check basic repeat Loop...
repeat{
  print("I am sujal")
}

# 2.Display even number upto 30 using repeat loop...
tab<-2
repeat{
  print(tab)
  tab=tab+2
  if(tab==30){
    break
  }
}

#********************************** Switch-Case *************************************

# 1.We have predefined value as per index switch case. snytax=switch(expression,case1,case2,case3)
a<-as.numeric(readline(prompt="Enter Number to check students = "))
switch (a,"sujal","shreeya","harsha","faisal","abbas","rudra")

# 2.We have another switch case as per user input. syntax=switch(object,case=action)
a<-as.numeric(readline(prompt="Enter First Number = "))
b<-as.numeric(readline(prompt="Enter Second Number = "))
user<-readline(prompt="Enter the fucntion so we have add,sub,div,mul choose one among this = ")

switch (user,
        "add"=cat("Addition = ",a+b),
        "sub"=cat("Subtraction = ",a-b),
        "div"=cat("Divison = ",a/b),
        "mul"=cat("Multiplication = ",a*b))


#********************************** Functions-Control-Structure *************************************

# 1.Mean: Calculate the mean (average) of rows or columns.
# 2.Sum: Calculate the sum of rows or columns.
# 3.Median: Calculate the median of rows or columns.
# 4.Minimum and Maximum: Find the minimum or maximum value in rows or columns.
# 5.Standard Deviation and Variance: Calculate the standard deviation or variance of rows or columns.
# 6.User-Defined Functions: You can also apply your own custom functions to the rows or columns.
# 7.sqrt Function : To find square root of any number.

#***************************Apply(data,margin,fun)***************************
# Note = 1 indicate row and 2 indicate column for matrix,array.

# 1.Perform apply() with matrix...
a<-matrix(1:12,nrow=3)
apply(a,1,sd)

a<-matrix(1:12,nrow=3)
apply(a,1,var)

# 2.Perform apply() with array...
a<-array(1:8,dim=c(2,2,2))
apply(a,2,min)

apply(a,2,sd)

apply(a,2,var)

# 3.Perform apply() with list...

#lapply returns a list of results, where each result corresponds to the application of the function to each element of the list.
#apply is typically used on matrices or arrays (2-dimensional data structures), not on lists. It operates along margins (rows or columns) of the data structure, not on individual elements of a list.

a<-list(c(1,2,3,4,5,6,7,8,9,10))
lapply(a,sd)
lapply(a,var)
lapply(a,sum)

# 4.Create User-Defined function and use in apply()...
user<- function(x) {
  return (x*2)
}

lapply(a,user)


#***************************Lapply(data,fun)***************************

# Which enables you to apply a specific function to each element in a list or vector.

# 1.Display all value in the list by adding 5 to each value.
user1<-function(x){
  return(x+5)
}

lapply(a,user1)

# 2.Create vector and apply user-defined sqrt
vec<-c(1,2,3,4,5,6,7,8,9,10)

user2<-function(x){
  result<-sqrt(x)
  return (result)
}

lapply(vec,user2)
sqrt(2)


#***************************Sapply(data,fun)***************************

# 1.Perform sapply() fucntion with matrix...
a<-matrix(1:12,nrow=3)
lapply(a,sum)


b<-list(a=1:10,b=11:20)
lapply(b,max)
sapply(b,max)

# Difference between lapply() and sapply()

# 1.lapply() =>
# >lapply() applies a function to each element of a list or vector and returns the results as a list.
# >It always returns a list, even if the input is a vector.
# >Use lapply() when you want to preserve the results as a list, especially when the results may have different lengths.

# 2.sapply() =>
# >sapply() applies a function to each element of a list or vector and tries to simplify the result into a vector or matrix, if possible.
# >It attempts to simplify the output, so if the function produces a vector of the same length for each element, sapply() will return a matrix or vector.
# >Use sapply() when you want a simplified result and expect the results to be of consistent length.


#***************************Tapply(data,Index,fun)***************************

# Thoery :-
# >tapply() is specifically designed for working with factors or categorical variables.
# >It allows you to apply a function to subsets of data defined by the levels of one or more factor variables.
# >The primary purpose of tapply() is to generate summaries or aggregated results. It returns an array of results, typically in the form of a matrix or an array.
# >The output of tapply() is structured based on the factor(s) used for splitting the data, which makes it suitable for aggregation.
# >tapply() is particularly useful when you want to calculate summary statistics (e.g., mean, sum) for subsets of data defined by factor levels.
# >Other apply functions like lapply() and sapply() are more general and can be used for a wider range of tasks.

SYSS<-c(1,2,3,4,5,6,7,8,9,10)
SYFS<-c("M","F","M","M","F","F","M","F","M",'F')
tapply(SYSS,SYFS,max)
tapply(SYSS,SYFS,mean)

# Note : Factor set level ascending wise by-default, so min value will aslo get by there levels or it will print level corresponding result.
# Note : The average,minimum and maximum of the values for each category is what we are looking for.
student<-c("sujal","shreeya","harsha","faisal","abbas","rudra")
class<-c("M","F","F","M","M","M")
tapply(student,class,min)
tapply(student,class,max)
