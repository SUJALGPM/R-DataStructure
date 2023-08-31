#*******************************Environment***********************************


#1. To check current env
environment()

#2. To list out current env objects
objects() 
ls()      

#3. To create new environment
demo<-new.env()
View(demo)

#4. To create var and assign value in new env
demo$a<-20 
demo$c<-40
assign("b",30,envir = demo) #Same as above using assign()

#5. To listout all variable from new env
ls(demo)

#6. Remove objects from env
rm(a,b)
rm(c,envir = demo)
rm(list = ls())

#7. Check object present or not in env
exists("a",envir = demo)
exists("c")

#8. Display object value from env
demo$a
get("a",envir = demo)

#9. Create list and store to save R objects in a file on disk.
student<-c("sujal","faisal","harsha","shreeya","abbas","rudra")
demo$data<-student
save(student,file="demo.RData")
load("~/demo.RData")

hat<-"ky re"
save.image(file = "demo1.RData")
load("~/demo1.RData")
 
#10. Create list and store or save R objects in file using RDS.
college<-c("orange","green","yellow","red")
saveRDS(college,file = "demo3")
padh<-readRDS(file = "~/demo3") #Same as a load function()
padh

#11. Get and Set working directory...
getwd()
setwd("S:/PROGRAMS/R script Programs")
