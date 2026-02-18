#Jayques Nelson
#Date 02/16/2026
#ANOVA test

#Load the library dplyr & ggplot2
library(dplyr)
library(ggplot2)

#Import CSV
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

df <- read.csv(PATH, header=TRUE) #by defaults header is true

#Plot the data
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

#Apply One-Way ANOVA function
anova_one_way <- aov(time~poison, data = df) 
summary(anova_one_way)

#Results
Df Sum Sq Mean Sq F value   Pr(>F)    
poison       1 0.9316  0.9316   20.67 3.96e-05 ***
  Residuals   46 2.0735  0.0451                     
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1