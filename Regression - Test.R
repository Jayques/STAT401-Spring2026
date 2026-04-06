#Name: Jayques Nelson 
#Date: April 6, 2026


#Create 2 dummy variables, x - dependent, y - independent
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) 
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) 

# Apply the lm() function. 
relation <- lm(x~y) 

#Prints the built model
print(relation)

#Results
Call:
  lm(formula = x ~ y)

Coefficients:
  (Intercept)            y  
61.380        1.415


#Predict value of x with a test value of y
a<-data.frame(y=70)
result<-predict(relation, a)
print(result)

#Results
1 
160.452 