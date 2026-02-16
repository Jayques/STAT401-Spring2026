#Jayques Nelson
#Date 02/16/2026
#ANOVA test

#Load the library ggpubr
library("dplyr")
library(ggplot2)

#Import CSV
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

df <- read.csv(PATH, header=TRUE) #by defaults header is true

#Plot the data
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()
