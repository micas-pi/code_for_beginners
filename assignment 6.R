# R course for beginners
# Week 6
# assignment by Michal Caspi, id 313470551

#### LOAD AND MERGE ####

# 1. load and merge

file_names <- dir("./Data/stroop_data")

df1 <- data.frame()

for(i in file_names){
  temp <- read.csv(paste0("./Data/stroop_data/", i))
  df1 <- rbind(df1, temp)
}

# 2. count values

library(dplyr)

df1 |>
  count(subject)

df1 |>
  count(condition)

# 3. missing values

print(sum(is.na(df1["rt"])))
print(sum(is.na(df1["rt"])) / count(df1["rt"]))

# 4. rt histogram

library(ggplot2)
ggplot(df1, aes(x = rt, fill = condition)) +
  geom_histogram(alpha = 0.8, bins = 20, position = "identity") +
  labs(
    x = "rt",
    y = "count",
    title = "rt per condition"
  )

#### DATA CLEANING ####

# 1. create exceptions function

exc <- function(vec){
  
  vec_mean <- mean(vec)
  
  vec_sd <- sd(vec)
  
  return(vec > (vec_mean+vec_sd*2))
}

# 2. highlight outliers

outliers_all <- rep(FALSE, nrow(df1))

unique_subject <- unique(df1$subject)

for (i in unique_subject){
  
  subjectx <- df1$subject == i
  rt_i <- df1$rt[subjectx]
  outliers_i <- exc(rt_i)
  outliers_all[subjectx] <- outliers_i
  
}

df1$outliers <- outliers_all

#### PRESENT DATA ####

# 1. outliers per subject

df1 |>
  group_by(subject) |>
  summarise(n_outliers = sum(outliers)
  )

# 2. clean histogram

clean_df =
  df1 |>
  filter(outliers == FALSE)
View(clean_df)

ggplot(clean_df, aes(x = rt, fill = condition)) +
  geom_histogram(alpha = 0.8, bins = 20, position = "identity") +
  labs(
    x = "rt",
    y = "count",
    title = "rt per condition (no outliers)"
  )
