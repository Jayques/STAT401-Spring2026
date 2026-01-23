#01/23/2026, Jayques Nelson
#Assignment 1

#Generate dummy dataset
ClassA = rnorm(1000)
ClassB = rnorm(1000)

#Plot the variables x and y using a density plot
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(ClassA), col='yellow')
lines(density(ClassB), col='black')

#Apply the function for t-test
ttest = t.test(ClassA,ClassB) 

#T-test results
Welch Two Sample t-test

data:  ClassA and ClassB
t = 0.21665, df = 1991.2, p-value = 0.8285
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -0.08013082  0.10003323
sample estimates:
  mean of x    mean of y 
-0.009408234 -0.019359438 