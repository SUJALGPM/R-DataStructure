#*****************************************Graphical-Data-Analysis*****************************************

#Theory:-
# Plot() in R is used to plot points in a graph.
# It is a generic function that has many methods which are called based on the type of input object passed to it.
# Plot() is basically used to create plot a scatter plot or line graph of 2
# vectors. i.e it is used to plot 2 vectors against each other.
# It develops a 2-dimensional graph.
# PLot is generic function is used to create graph for different types of input objects.
# Additional is that create plot of temp2020, than create points() of 2021 temp and create lines() 2022 temp.

# syntax: plot(x, y, type, main, xlab, ylab, col, cex, pch, lwd, lty).
#1. x and y are two input vectors vectors corresponds corresponds to X and Y axis resp.

#2. type is a code used to specify the type of plot
#• “p” to plot points only
#• “l” to plot line only
#• “b” to plot both points and line
#• “c” to join empty points with line
#• “o” to plot both over-plotted pointes and line
#• “h” to plot histogram plot
#• “s” to plot stair step

#3. main parameter is used to give title to plot.

#4. xlab and ylab are used to specify labels of X and Y axis resp.

#5. col is used to specify colour of points and line.

#6. cex specifies the size of points. 1 is default size.

#7. pch is used to specify shape of points. Value of pch ranges from 0 to 25.

#8. lwd specifies line width. Default width is 1.

#9. lty specifies specifies line style. Line format ranges from 0 to 6.
#• 0 removes line
#• 1 displays solid line
#• 2 displays dashed line
#• 3 displays dotted line
#• 4 displays “dot dashed” line
#• 5 displays “long dashed” line
#• 6 displays “two dashed”(long and short dashes) line.


#*****************************************Plot-Analysis*****************************************
a<-c(1,2,3,4,5,6)
b<-c(9,8,7,5,3,1)

plot(a,b,xlab = "X.axis",ylab = "Y.axis",main = "Whether-Forcast",cex=2,pch=12,lwd=6,lty=5,type = 'b',col="red")


#*****************************************Save-File-Types*****************************************

#1. Save as jpeg image:
jpeg(file="whether.jpeg")

#2. Save as png image.
png(file="whether.png",width = 300,height = 300,res = 700) 

#3. Save as pdf.
pdf(file="whether.pdf8")

#4. Save as bmp image.
bmp(file="whether.bmp")

#5. Save as svg image.
svg(file="whether.svg")


#*****************************************Plot-Analysis*****************************************

#1. Plot 1single point on specific graph.
plot(3,6)

#2. Plot 2 point in graph.
plot(c(4,6),c(2,7))

#3. Plot point in graph on sequence.
plot(1:10)


#*****************************************Close-Down-Plot*****************************************
dev.off()
