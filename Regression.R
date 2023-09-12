#*****************************************Regression*****************************************

#Theory :-

#Note: Regression is a supervised type of machine learning technique.
#Note: It is widely used statistical tool to establish relationship between two variables.
#Note: Value of output variable Y is predicated based on one or more input variable X.
#Note: Input variable is called predicator variable or output variable is called response variable.
#Note: It establish linear relationship between predicator and response variable and this mathematical formula can be used to predict/estimate the value of response variable when only predicators are known.
#Note: There are two types of regression technique :-Linear and multiple.
#Note: Formula for Linear reg Y=B1+B2X+C
#Note: Above B1 $ B2 are slope, C is error term, Y is response variable, X is predicator.
#Note: lm() command or function is used to calculate the regression or we can say to create formula.
#Note: Syntax of lm() => lm[(respone var)~(predicator var),data=data_source]
#      Example => predicateheight=lm(height~age,data=heightage)
#Note: Multiple reg , here only more than one predicator var are available.


#*****************************************Linear-Reg*****************************************

# Step1: Create a sample dataframe.
data<-data.frame(age=c(1,2,3,4,5,6,7,8,9,10,11,12,13),height=c(75.0,84.0,93.0,101.6,108.4,114.6,120.6,126.4,132.2,138.3,142.0,148.0,150.0))

# Step2: Create realtionship[formula].
formula<-lm(height~age,data = data)

# Step3: Plot the data to easliy visualize.
plot(data$age,data$height)

# Step4: Summarize the regression in details.
summary(formula)

# Step5: Now create input dataframe to predict some value.
input1<-data.frame(age=c(14,15))
input2<-data.frame(age=c(4,5))

# Step6: Predict value basis on input.
data<-predict(formula,input2)


#*****************************************Multiple-Reg*****************************************

# Step1: Create a sample dataframe.
data1<-data.frame(ut1=c(100,200,300,400,500),ut2=c(900,800,700,600,1000),ut3=c(1000,2000,3000,4000,5000),per=c(2000,3000,4000,5000,6500))

# Step2: Create realtionship[formula].
formula<-lm(per~ut1+ut2+ut3,data = data1)

# Step3: Plot the data to easliy visualize.
plot(data1$ut1,data1$ut2,data1$ut3)

# Step4: Summarize the regression in details.
summary(formula)

# Step5: Now create input dataframe to predict some value.
input1<-data.frame(ut1=500,ut2=1000,ut3=5000)
input2<-data.frame(ut1=200,ut2=800,ut3=2000)

# Step6: Predict value basis on input.
data<-predict(formula,input1)
data
