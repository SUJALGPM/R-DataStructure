#create dataframe
data<-data.frame(id=c(1,2,3,4),name=c("sujal","shreeya","harsha","faisal"),
course=c("java","dbms","react","angular"),fees=c(2000,5000,4000,6000))
data

#Extract data from dataframe
data["name"]
data[["name"]]
data[2:3,]
data[c(1,4),]
data$id
data$name[2]
data[,c(2,4)]
data.frame(data$name,data$fees)
data[1:3,1:3]

#Update data from dataframe
data$course[4]<-"spring"
data[3,4]<-3000
data$id[data$name=="shreeya"]<-2
data[4,course]<-"spring"

#Delete data from dataframe
data[-3,]
data[,-3]
data[-1:-3,]
new[c(-2,-5),]
data$name<-NULL
new[new$course != "spring",]

#Subset in dataframe
sub1<-subset(new,course == "spring")
sub1

sub2<-subset(new,id < 5)
sub2

sub3<-subset(new,fees > 3000)
sub3

sub4<-subset(new,name=="shreeya")
sub4

sub9<-subset(new,id>5 | fees < 4000)
sub9

sub10<-subset(new,id>5 & fees < 4000)
sub10

#New Row Using Rbind()
r1<-c(6,"mahi","react",9000,"Male")
data1<-rbind(new,r1)
data1

data2<-rbind(new,c(7,"rudra","bootstap",1000))
data2

r2<-c(8,"hina","html",1200)
r3<-c(9,"jagu","css",5500)

#New Col Using Cbind()
data5<-cbind(data2,gender=c("male","female","female","male","male","male"))
data5

#Filter Rows based on .....
names<-c("sujal","shreeya")
data5[data5$name %in% names,]

data5[data5$gender %in% "female",]

#Merge dataframe based on condition...
t1<-data.frame(id=c(1,2,3),name=c("hina","shreeya","harsha"),course=c("java","dbms","spring"))
t2<-data.frame(id=c(1,2,4,5),course=c("cn","os","cs","st"))
merge_dataframe <- merge(t1,t2,by="id")
merge_dataframe

#Remaining function in dataframe
dim(data2)
nrow(data2)
ncol(data2)
str(data2)
sort(data$fees,decreasing = FALSE)
data2[order(data2$fees,decreasing=FALSE),]
data2[order(data2$fees,decreasing=TRUE),]
unique(data2)

#Join Operation on dataframe....
join1<-data.frame(id=c(1,2,3,4),name=c("sujal","shreeya","harsha","faisal"),dpt=c("rubber","computer","eletrical","It"))
join2<-data.frame(id=c(1,2,6,7),name=c("abbas","rudra","mahi","hina"),dpt=c("Ai","marketing","financial","Technical"))

#Inner Join
toe1<-merge(x=join1,y=join2,by="id")
toe1

toe2<-join1 %>% inner_join(join2,by="id")
toe2

#Left Join
toe3<-merge(x=join1,y=join2,by="id",all.x=TRUE)
toe3

toe4<-join1 %>% left_join(join2,by="id")
toe4

#Right Join
toe5<-merge(x=join1,y=join2,by="id",all.y=TRUE)
toe5

toe6<-join1 %>% right_join(join2,by="id")
toe6

#Full Join
toe7<-merge(x=join1,y=join2,by="id",all=TRUE)
toe7

toe8<-join1 %>% full_join(join2,by="id")
toe8

#Anti Join
toe9<-join1 %>% anti_join(join2,by="id")
toe9

#Cartesion Product
toe10<-merge(x=join1,y=join2,by="id",all=NULL)
toe10
