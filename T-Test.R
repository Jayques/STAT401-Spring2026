#01/16/2026, Jayques Nelson
#Purpose: Testing T-Test

#Generate dummy dataset
x = rnorm(10)
y = rnorm(10)

#Plot the variables x and y using a density plot
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#Apply the function for t-test
ttest = t.test(x,y) 

#T-test results
Welch Two Sample t-test

data:  x and y
t = -1.1485, df = 15.59, p-value = 0.2681
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -1.0586475  0.3156739
sample estimates:
  mean of x   mean of y 
-0.05163308  0.31985371 