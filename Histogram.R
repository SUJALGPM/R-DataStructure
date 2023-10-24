#*****************************************Graphical-Data-Analysis*****************************************

# Theory :-
# A histogram is a type of bar chart which shows the frequency of the number of values which are compared with a set of values ranges.
# The histogram is used for the distribution, whereas a bar chart is used for comparing different entities.
# In the histogram, each bar represents the height of the number of values present in the given range.
# R creates histogram using hist() function. This function takes a vector as an input and uses some more parameters to plot histograms.

# Syntax :- hist(v,main,xlab,ylab,xlim,ylim,breaks,col,border) 
# v = It is a vector that contains numeric values.
# main = 	It indicates the title of the chart.
# col = 	It indicates the title of the chart.
# border = It is used to set the border color of each bar.
# xlab =  It is used to describe the x-axis.
# ylab = It is used to describe the y-axis.
# xlim =  It is used to specify the range of values on the x-axis.
# ylim = It is used to specify the range of values on the y-axis.
# breaks = It is used to mention the width of each bar.


#*****************************************Histogram-Analysis*****************************************

# Create data for the graph...
v <-c(12,24,16,38,21,13,55,17,44,39,10,60)

# Create histo using hist()...
s<-hist(v,xlab="boys",ylab="girls",xlim = c(0,60),ylim=c(0,10),col = "yellow",border = "black",main = "Student frequency..",breaks = 5)

# Store the hist into png format..
png(filename = "Students.png")

# Close the graph...
dev.off()

#*********************Using histogram return values for labels using text()***********************
text(s$mids,s$counts,labels = s$counts,adj=c(0.5,-0.5))
