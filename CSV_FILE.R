#Check working directory...
getwd()
#Set Working directory....
setwd("S:/PROGRAMS/Excel_File")

#Read data from Excel file(.csv extension)
read_data<-read.csv("Demo.csv")
print(read_data)

#Create dataframe and create csv file using that data..
data<-data.frame(id=c(1,2,3,4,5,6,7,8,9,10),name=c("sujal","shreeya","harsha","faisal","abbas","rudra","hasti","rasseca","mahi","anjali"),dpt=c("rubber","computer","IT","civil","mech","AI","leather","electrical","hostel","electronic"),marks=c(89,65,73,90,60,55,70,45,62,88))
write.csv(data,"S:/PROGRAMS/Excel_File/TestData")

#Analyzing Demo.csv File....

# 1.Basic function to analyize CSV.File....
nrow(read_data)
ncol(read_data)
dim(read_data)
is.data.frame(read_data)

# 2. Filter data from that CSV.File..
read_data[order(read_data$ID,decreasing = TRUE),] #Display data in descending order
read_data[order(read_data$ID,decreasing = FALSE),] #Display data in ascending order
"sujal" %in% read_data

# 3. Getting student those dpt has IT
r1<-subset(read_data,dpt=="IT")

# 4. Display student ID<5
r2<-subset(read_data,ID<5)

# 5. Display student Only first 6 student from CSV.FILE
r3<-head(read_data)

# 5. Display student Only last 6 student from CSV.FILE
r4<-tail(read_data)

# 6. Fix function is invokes editor...
fix(read_data)

# 7. Display student who ID at maximum range.
r5<-subset(read_data,ID == max(ID))
           