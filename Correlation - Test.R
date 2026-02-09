#Jayques Nelson
#Date 02/02/2026
#Correlation test

if(!require(devtools)) install.packages("devtools"); 
devtools::install_github("kassambara/ggpubr", force = TRUE)

#Load the library ggpubr
library("ggpubr")

#Load dummy datasets for testing
my_data <- mtcars 
head(my_data, 6)

#Hypothesis: Weight of the car is inversely proportional to the 
#miles per gallon it travels
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, 
          cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

#Apply the correlation test function
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 

#Results
#Pearson's product-moment correlation

#data:  my_data$wt and my_data$mpg
#t = -9.559, df = 30, p-value = 1.294e-10
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
# -0.9338264 -0.7440872
#sample estimates:
#       cor 
#-0.8676594

#Accept the alternative hypothesis!



#Set the working directory
setwd("C:/Users/jayqu/Desktop/CLASSES 2025-2026/SPRING2026/DATA ANALYSIS/")

#Read data.csv file in R
data <-read.csv("data.csv", header=TRUE)

#Generate Scatter plot
ggscatter(data, x = "Class.A", y = "Class.B", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, 
          cor.method = "pearson", xlab = "ClassA", ylab = "ClassB")

#Apply the correlation test function
res <- cor.test(data$Class.A, data$Class.B, method = "pearson") 
res

#Results
#Pearson's product-moment correlation

#data:  data$Class.A and data$Class.B
#t = 82191237, df = 3, p-value < 2.2e-16
#alternative hypothesis: true correlation is not equal to 0
#95 percent confidence interval:
#  1 1
#sample estimates:
#  cor 
#1