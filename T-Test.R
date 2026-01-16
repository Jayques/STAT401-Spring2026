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
