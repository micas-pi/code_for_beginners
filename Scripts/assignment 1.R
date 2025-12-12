#### R FOR BEGINNERS WEEK 1 ASSIGNMENT BY MICHAL CASPI 313470551 ####
# 1. create a csv file
patient = (1:6)
gender = c("female", "female", "male", "female", "male", "male")
age = c(16, 22, 31, 18, 39, 31)
depression = c(TRUE, FALSE, FALSE, TRUE, TRUE, FALSE)
df = data.frame(patient, gender, age, depression)
View(df)
write.csv(df, file = "./R course/Data/df_first_assignment.csv")
