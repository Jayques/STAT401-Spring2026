#Jayques Nelson
#April 15, 2026
#Chi-Square Tets

#Read dummy dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")

#Print dataset in table form
table(data_frame$treatment, data_frame$improvement)

#Chi-Square function
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

#Results
Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841