#*****************************************Statistical-Analysis*****************************************

#Theory:
#Note: Statistical analysis in R is performed by using many in-built functions. Most of these functions are part of the R base package. These functions take R vector as an input along with the arguments and give the result.
#Note: The function we are discussing is mean, median, and mode.
#Note: The measure of central tendency in R Language represents the whole set of data by a single value. It gives us the location of the central points. There are three main measures of central tendency


#*****************************************Mean*****************************************

#Note: It is the sum of observations divided by the total number of observations. It is also defined as average which is the sum divided by count.
#Note: no of element/sum of elements = 0
#Note: The function mean() is used to calculate this in R.
#Note: The basic syntax = mean(x, trim = 0, na.rm = FALSE, ...)
#x = is the input vector.
#trim = is used to drop some observations from both end of the sorted vector.
#na.rm = is used to remove the missing values from the input vector.
v1<-c(1,2,3,4,5,6)
mean(v1)


#*****************************************Median*****************************************

#Note: It is the middle value of the data set. It splits the data into two halves. If the number of elements in the data set is odd then the center element is median and if it is even then the median would be the average of two central elements.
#Note: ((count of no)+1)/2=0
#Note: Syntax: median(x, na.rm = False).
#Note: Where, X is a vector and na.rm is used to remove missing value
v2<-c(1,2,3,4,5,6,7)
median(v2)

v3<-c(1,2,3,4,5,6)
median(v3)


#*****************************************Mode*****************************************

#Note: The mode is the value that has highest number of occurrences in a set of data. Unike mean and median, mode can have both numeric and character data.
#Note: R does not have a standard in-built function to calculate mode. So we create a user function to calculate mode of a data set in R. This function takes the vector as input and gives the mode value as output.
#Note: We can use modeest package of the R, this package provide function to find R.
#Note: Another way is User-Function[formula] => names(table)[which(table==max(table))]
#Note: names(a) return the names of the variables in the vector a.
#      which(a==max(a)) returns the indices of the elements in a that are equal to the maximum value of a.
#      [] selects the elements at the specified index from a vector or list.


#Step 1 To calculate mode:-
a<-c(2,3,4,1,7,2,1,2)
m<-table(a)
names(m)[which(m==max(m))]

#Step 2 To calculate mode:-
install.packages("modeest")
library("modeest")

mfv(a) #Directly found the mode usin mfv() function.
