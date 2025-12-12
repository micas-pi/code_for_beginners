# R course for beginners
# Week 1
# assignment by Michal Caspi, id 313470551

# 1. create a csv file
subject = seq(1, 6, 1)
gender = sample(c("female", "male"), size = 6, replace = TRUE)
age = runif(6, min = 15, max = 40)
depression = rbinom(6, 1, 0.15)
df = data.frame(patient, gender, age, depression)
View(df)
write.csv(df, file = "./R course/Data/df_first_assignment.csv")

