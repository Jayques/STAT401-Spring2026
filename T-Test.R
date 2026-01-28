#01/28/2026, Jayques Nelson
#Purpose: Adding a title to plot

#Generate dummy dataset
x = rnorm(10)
y = rnorm(10)

#Option A
#Plot the variables x and y using a density plot & title
#title passed as argument - less compute
#Add labels to X and Y axis, and label names should be X = "Sequence", Y = "Density of X and Y"
#Create a dashed line instead pf continuous line
#Adjust scale of Y axis such that it fits all the curves opn plot
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l',main="T Test",
     xlab = "Sequence",ylab = "Density of X and Y",lty=2, ylim = c(0, 0.8)) 
lines(density(x), col='green')
lines(density(y), col='blue')

#Option B - passing title as a function
#Plot the variables x and y using a density plot & title
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
title(main = "T Test")    #title passed as function - more compute
lines(density(x), col='green')
lines(density(y), col='blue')


#Apply the function for t-test
ttest = t.test(x,y) 

#T Test Results
Welch Two Sample t-test

data:  x and y
t = 1.587, df = 17.941, p-value = 0.13
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -0.2015815  1.4453555
sample estimates:
  mean of x  mean of y 
0.2561163 -0.3657708 