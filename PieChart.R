#*****************************************Graphical-Data-Analysis*****************************************

#Theory:-

# Pie chart is a circular graph that indicates numerical proportions in slices.
# A pie charts is a presentation of values in the form of slices of circle with different colors.
# Slices are labeled with description, and the number corresponding to each slice are shown in the chart.
# The pie chart are created with the help of pie() function, which take positive number as a vector input.
# Syntax:- pie(x,label,radius,col,main,clockwise,init.angle).
#• x = It is the vector containing the numeric value in the pie chart.
#• label = It is used to give description of slices.
#• col = It is used to give color to slices of chart.
#• radius = It indicate the radius of the pie chart[-1 to +1].
#• clockwise = It is used to drawn the pie chart in clockwise and anti-clockwise using boolean property.
#• init-angle = It is used to change the angle of the pie chart.
#• main = It is used to display the header of the pie chart[Topic].


#*****************************************Create-2D-Pie*****************************************
x<-c(20,60,10,40,80)
name<-c("Apple","Cherry","Banana","Orange","chiku")
pie(x,labels = name,col = rainbow(length(x)),main="Agriculture Field",init.angle = 90,clockwise = TRUE)


#*****************************************Create-3D-Pie*****************************************

#Note: By default in R pie chart are display in 2d.
#Note: A pie chart with 3d dimensions can be drawn using additional package.
#Note: Install package = 'plotrix'.
#Note: explode parameter is used to control the degree if seperation of slices from the center.

install.packages('plotrix')
library('plotrix')

x<-c(80,20,40,10,50)
name<-c("Java","Mad","Awd","Ajp","DBMS")

pie3D(x,labels = name,main="Book Ratio",col = rainbow(length(x)),explode = 0.1)


#*****************************************Chart-Legend*****************************************

#Note: In R, the legend() function is used to add a legend or key to a plot. Legends are typically used to provide information about the data represented in the plot, such as labels for different groups or colors used in the plot.
#Note: Legend can be positioned as either :- bottomright, bottom, bottomleft, left, topleft, top, topright, right, center.
#Note: Syntax - legend(x,legend,fill,cex,bg,title)
#• x = It is used to position the legend in the pie chart.
#• legend = It is used to display the labels or keys that you want to display in the legend.
#• fill = It is used to give color to box inside the legend.
#• bg = It is used to give background color to box inside the legend.
#• cex = It is used to give text size upto 0.8 may be.
#• title = It is used to give title of the legend.

x<-c(80,20,40,10,50)
name<-c("Java","Mad","Awd","Ajp","DBMS")

legend(x="topright",legend = name,title = "Book-Type",fill = rainbow(length(x)),bg="Lightgrey",cex = 1)


#*****************************************Chart-Slice-Percentage*****************************************

#Note: We are calculating the percentage of each "slice" in a pie chart by dividing the number of nations for each category (presumably from a data frame or vector called nations) by the total number of nations and then rounding the result.
#Note: For calculating this we use round() function.
#Note: There are 2 way to calculate the percentage.

x<-c(70,10,50,40,30)
nations<-c("India","Russia","America","Brazil","Asia")

# 1. First technique.
pie_percent<-round(x/sum(x)*100)
paste("Nations","=",pie_percent,"%")

# 2. Second technique.
pie_percent<-round(100*x/sum(x),1)
paste("Nations","=",pie_percent,"%")
