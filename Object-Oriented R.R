#********************************Object-Oriented-Programming**********************************

#• OOP is a programming pattern/model that is based on the concept of objects and classes.
#• Object is an instance of a class. It can be any real world entity.
#• Class is a template from which objects are created. It defines the behaviour of objects by using attributes and functions.
#• Classes can be organised in hierarchy using parent child relationship.
#• R has 3 object oriented oriented systems systems: S3, S4 and Reference Reference class.
#• All these systems differ in a way they define classes, methods and objects.
#• In R, instead of methods are nothing but the generic functions that can be applied to any type of input and produce results based on the input type.
#• Primary objective of OOP in R is for Print, Summary and Plot methods.
#• With the help of oops concepts, we can construct the modular pieces of code which are used to build blocks for large systems. 


#********************************Object-Classes************************************
#• In R, everything is an object. Therefore, programmers perform OOPS concept when they write code in R. An object is a data structure which has some methods that can act upon its attributes.
#• In R, classes are the outline or design for the object. Classes encapsulate the data members, along with the functions. In R, there are two most important classes, i.e., S3 and S4, which play an important role in performing OOPs concepts.


#********************************Classes - [s3]************************************

#• In R, we define a function which will create a class and return the object of the created class.
#• A list is made with relevant members, class of the list is determined, and a copy of the list is returned.
#• S3 class has no formal definition.
#• It is used to overload any function

#• Syntax to create S3 class...
s1<-list(id=1,name="sujal",dpt="comp")
s2<-list(id=2,name="shreeya",dpt="It")

# Assign class to list...
class(s1)<-"coStudent"
class(s2)<-"coStudent"

# Now overide the normal print statment...
print(s1)

# Syntax to create print method for s3 class...
print.coStudent<-function(obj){
  cat("ID : ",obj$id,"\n")
  cat("NAME : ",obj$name,"\n")
  cat("DPT : ",obj$dpt,"\n")
}

print(s1)
print(s2)

# Function to create object of that class....
createObj<-function(id,name,dpt){
  obj = list(id=id,name=name,dpt=dpt)
  attr(obj,"class")<-"ITstudent"
  obj
}

s3<-createObj(1,"harsha","IT")

# Add another field/attr to s3 object....
attr(s3,"fees")<-500
fees<-attr(s3,"fees")
fees

# S3 class Inheritance....

# When new S3 class is derived from old S3 class then it can only inherits the functions/methods of old S3 class
# It cannot inherit the data memeber/attributes of old class.

s5<-list(id=5,name="abbas",dpt="Civil")

# Override the print method of ITstudent..
class(s5)<-c("CivilStudent","ITstudent")


#***********************************Classes - [s4]************************************

#• The S4 class is similar to the S3 but is more formal than the latter one.
#• It differs from S3 in two different ways. 
#• First, in S4, there are formal class definitions which provide a description and representation of classes. 
#• In addition, it has special auxiliary functions for defining methods and generics. 
#• The S4 also offers multiple dispatches. 
#• This means that common functions are capable of taking methods based on multiple arguments which are based on class.
#• The child class can inherit all the methods of old class as well as the data members of objects and class

# Creating s4 class...

#• In R, we use setClass() command for creating S4 class. 
#• In S4 class, we will specify a function for verifying the data consistency and also specify the default value. 
#• In R, member variables are called slots.

# Create a book class with 3 slots...
setClass("book",slots = list(bid="numeric",bname="character",bprice="numeric"))

# Create object of book class using new() keyword...
s1<-new("book",bid=1,bname="java",bprice=300)

# Now we can overide the print method...
library("methods")
setMethod("print",signature = "book",function(x){
  cat("BOOK ID :",x@bid,"\n")
  cat("BOOK NAME :",x@bname,"\n")
  cat("BOOK PRICE :",x@bprice,"\n")
})

print(s1)

# Displays data members with the data type....
getSlots("book")

# Displays data members without the data type...
slotNames("book")

# Change the value of attribute...
slot(s1,"bprice")<-200
"@"(s1,"bprice")<-400

# *************************************s4 Class Inheritance************************************

# When new S4 class is derived from old S4 class, it not only inherits methods/functions of old class but data members/attributes of objects are also inherited by new class.
# “contains” keyword is used to specify inheritance, i.e. class author is inherited from class book.

# Create s4 class and inherit from old book class...
setClass("author",slots = list(auID="numeric",auName="character"),contains = "book")

# Create a new obj...
s5<-new("author",auID=101,auName="Sujal",bid=1,bname="React",bprice=600)

# Ovveride the print method of book class...
setMethod("print","author",function(x){
  cat("Author ID :",x@auID,"\n")
  cat("Author Name :",x@auName,"\n")
  cat("BOOK ID :",x@bid,"\n")
  cat("BOOK NAME :",x@bname,"\n")
  cat("BOOK PRICE :",x@bprice,"\n")
})

print(s5)
