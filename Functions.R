#**************************User-Defined-Function******************************

#Function =>
# A function is a block of code which only runs when it's called.
# You can pass data, known as parameter into a function.
# A function can return data as a result.
# There are two types of functions : User-defined/Built-in function

# 1.Function without argument...
add<-function(){
  a=20
  b=20
  return(a+b)
}

add()

# 2.Function with argument...
sub<-function(a,b)
{
  return(a-b)
}

sub(50,20)

# 3.Function with default argument...
add<-function(a=20,b=50){
  return(a+b)
}

add(20,20) #Overide the parameter predefined value,

name<-function(name="Sujal"){
  print(paste("My name is",name))
}

name("Shreeya")
name("Harsha")
name()

# 4.Function to print square of 1 to 10...
square<-function(){
  x<-as.numeric(readline(prompt="Enter start number : "))
  y=as.numeric(readline(prompt="Enter end number : "))
  for(a in x:y){
    print(a*2)
  }
}

square()

# 5.Function to print table of 5...
table<-function(){
  x<-as.numeric(readline(prompt="Enter number : "))
  for(a in 1:10){
    print(paste(x,"*",a,"=",a*x))
  }
}

table()

# 6.Function to check even or odd number...
con<-function(){
  x<-as.numeric(readline(prompt="Enter First number : "))
  if(x%%2==0){
    print("Even number")
  }else{
    print("Odd number")
  }
}

con()

# 7.Function to chech factorial value...
fact<-function(){
  a=5
  fact=1
  i=1
  while(i<=a){
    fact=fact*i
    i = i + 1
  }
  print(paste("FACTORIAL VALUE = ",fact))
}

fact()

# 8.Function to check prime no....
prime <- function(){
  a<- as.integer(readline("Enter a no :"))
  i <-1
  count <- 0 
  while(i <=a){
    if(a %% i == 0){
      count = count +1
    }
    i<- i+1
  }
  if(count == 2){
    print(paste(a,"is prime no!!"))
  }else{
    print(paste(a,"is not prime no"))
  }
}

prime()

# 9.Fucntion to create basic calc...
cal<-function(){
  a<-as.numeric(readline(prompt="Enter first number :"))
  b<-as.numeric(readline(prompt="Enter second number :"))
  select<-as.numeric(readline(prompt="Select function below \n 1.Add \n 2.Sub \n 3.Mul \n 4.Div"))
  switch(select,
         "1"=cat("Addition = ",a+b),
         "2"=cat("Subtraction = ",a-b),
         "3"=cat("Multiplication = ",a*b),
         "4"=cat("Division = ",if(b!=0)a/b else "Division by zero is not allowed"))
}

cal()

# 10.Lazy Evaluation function...
# Arguments to functions are evaluated lazily, which means so they are evaluated only when needed by the function body.

add<-function(a,b){
  print(a*2)
  print(a)
  print(b)
}

add(4)

lazy_add <- function(a, b) {
  print(a)
  print(b)
}

# Only calling the function with one argument
  lazy_add(2+3, 4*5)

#In this example, 2+3 and 4*5 are not computed until they're printed within the function. 
#This demonstrates lazy evaluation, as the arguments are only evaluated when they are actually used inside the function.
#lazy_add is a function that takes two arguments, a and b.
#When the function is called with lazy_add(2+3, 4*5), the expressions 2+3 and 4*5 are not immediately computed.
#Inside the function, the values of a and b are printed. At this point, the calculations for 2+3 and 4*5 are performed only when the print statements use these variables.

#*******************************Built-In Function******************************

# 1.Math Functions...
ceiling(2.5)
floor(2.5)
abs(-5)
sqrt(4)
cos(4)
sin(5)
tan(5)
trunc(2.5,1.5,3.7)
round(3.14159265,3)
log(10)
log10(10)
exp(10)

# 2.String Functions...
substr("Mynameissujaldingankar",start = 9,stop = 13)
strsplit("Mynameissujaldingankar","s")
toupper("iamstrong")
tolower("IAMSTRONG")
a<-"My name is shadow dingankar"
sub("shadow","sujal",a)
b<-c('abc','bacabc','bac','abc')
grep("abc",b)
grepl("abc",b)
nchar(a)
paste("MY NAME IS","SUJAL DINGANKAR")

