#*****************************************Graphical-Data-Analysis*****************************************

#Theory:-
# Bar chart is a graph with rectangular bars.
# A bat chart is a pictorial representation in which numerical values of variables are represented by length or height of lines or rectangles of equal width.
# It is used for summarizing a set of categorical data like ordinal or nominal.
# The data is shown through rectangular bars having the length of the bar proportional to the value of the variable.
# Row of dataframe is no of bars & Col of dataframe is content inside the bars.

# Syntax :- barplot(x,name.arg,xlab,ylab,main,col)
#• x =  x is a input numeric vector or matrix to represent bars.
#• name.arg = names.arg is the name of vectors appearing under each bars.
#• xlab = A label for X-axis.
#• ylab = A label for Y-axis.
#• main = It is the title of bar charts.
#• col = It is used to give colors to bars.


#*****************************************Barchart-Analysis*****************************************
data<-data.frame(months=c("jan","feb","mar","april","may"),coverage=c(78,50,20,90,10))

barplot(data$coverage,names.arg = data$months,main = "Annual Coverage",xlab="Months",ylab = "Coverage",col = rainbow(length(data$coverage)))


#*****************************************Barchart-Ratio-Print*****************************************

#Note: For print the ratio of each bar we use text() function.
#Note: Syntax : text(x,y,labels,cex,pos)
#• x = You're using data as the x argument, which is the result of the barplot() function. data contains the x-coordinates of the bars created by barplot(). So, this places the text labels at the center of each bar.
#• y = You're using 0 as the y argument, which means the text will be placed at the same height (0) for all labels. 
#• labels = This argument is a character vector containing the labels you want to add to the plot. 
#• cex = This argument controls the size of the text. 
#• pos = This argument specifies the position of the text relative to the coordinates. In your code, you're using pos = 3, which corresponds to "above" the specified coordinates. This means that the text will be placed above the bars.

data<-data.frame(months=c("jan","feb","mar","april","may"),coverage=c(78,50,20,90,10))

a<-barplot(data$coverage,names.arg = data$months,main = "Annual Coverage",xlab="Months",ylab = "Coverage",col = rainbow(length(data$coverage)))

text(a,0,data$coverage,cex = 0.8,pos = 3)


#*****************************************Barchart[Color-Palettes]*****************************************

#Note: We have additinal package of colors that provide multiple shades.
#Note: install.packages('RColorBrewer')
barplot(data$coverage,names.arg = data$months,col = rainbow(length(data$coverage)))
barplot(data$coverage,names.arg = data$months,col = heat.colors(3))
barplot(data$coverage,names.arg = data$months,col = terrain.colors(4))
barplot(data$coverage,names.arg = data$months,col = topo.colors(2))


#*****************************************Group & Stack-Barcharts*****************************************

data<-data.frame(subjects=c("Java","React","Spring","Angular","Bootstrap"),cover=c(10,50,20,70,30),uncover=c(10,50,20,70,30))

#Note: For above dataframe simple bar chart can not be plotted. It has two categories of subjects(cover, uncover). We need to create grouped or stacked bar chart for it.
#Note: We can create bar charts with group of bars and stack using matrices as input values in each bar.
#Note: One or more variables are represented as a matrix that is used to contruct group bar charts and stack bar charts.
#Note: Difference between group and stack bar charts is a single parameter 'beside=TRUE | FALSE'.


#*****************************************Stack-Barcharts*****************************************

#*****************************************1st-Technique*****************************************

#Note: We create a stack bar charts, By omitting beside parameter stacked bar chart can be created.
#Note: First we need to create a matrix for those two columns.
combine<-c(data$cover,data$uncover)
b<-matrix(combine,nrow = 2,ncol = 5)
colors<-c("lightgray","lightgreen")
legend_label<-c("Cover","Uncover")

m<-barplot(b,names.arg = data$subjects,xlab = "Subjects",ylab = "Coverage",main = "Annual Portion cover",col = colors,border = "black")

legend("topright",legend = legend_label,bg="yellow",fill = colors)

#*****************************************2nd-Technique*****************************************,
n<-matrix(c(data$cover,data$uncover),nrow = 2,ncol = 5)
rownames(n)<-c("Cover","Uncover")
colnames(n)<-c("Java","React","Spring","Angular","Bootstrap")

m<-barplot(b,names.arg = data$subjects,xlab = "Subjects",ylab = "Coverage",main = "Annual Portion cover",col = colors,border = "black")

#*****************************************Stack-bartchart-Annual-Coverage*****************************************,
data<-data.frame(subjects=c("Java","React","Spring","Angular","Bootstrap"),cover=c(10,50,20,70,30),uncover=c(10,50,20,70,30))

m<-matrix(c(data$cover,data$uncover),nrow = 5,ncol = 2)

rownames(m)<-c(data$subjects)
colnames(m)<-c("January","February")

barplot(m,names.arg = c("Januray","February"),xlab = "Months",ylab = "Coverage",main = "Per year portion Coverage",col =rainbow(5))


#*****************************************Group-Barcharts*****************************************

#*****************************************Simple-barcharts-Participants*****************************************,
data<-data.frame(Events=c("Coding","Drawing","Puzzle","Chess","Newsletter"),boys=c(50,20,70,30,90),girls=c(20,40,80,30,90))
combine<-c(data$boys,data$girls)
m<-matrix(combine,nrow = 2,ncol = 5)
rownames(m)<-c("Boys","Girls")
colnames(m)<-c("Coding","Drawing","Puzzle","Chess","Newsletter")

barplot(m,names.arg = data$Events,xlab = "Events",ylab = "Participants",main = "TechNo Events",col = c("lightblue","green"),beside = TRUE)

#*****************************************Group-bartchart-Participants*****************************************,
data<-data.frame(Events=c("Coding","Drawing","Puzzle","Chess","Newsletter"),boys=c(50,20,70,30,90),girls=c(20,40,80,30,90))
combine<-c(data$boys,data$girls)
m<-matrix(combine,nrow = 5,ncol = 2)
rownames(m)<-c(data$Events)
colnames(m)<-c("March-2022","February-2023")
legend_label<-data$Events
colors<-rainbow(length(data$Events))

barplot(m,names.arg = c("March-2022","February-2023"),xlab = "Months",ylab = "Participants",main = "TeckNo Events Participants",col = rainbow(length(data$Events)),beside = TRUE)

legend("topright",legend = legend_label,bg="yellow",fill = colors,border = "black",cex = 1)
