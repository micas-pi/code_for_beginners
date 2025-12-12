# Python course for beginners
# Week 1
# assignment by Michal Caspi, id 313470551

# 1. create a data set

import pandas as pd
import numpy as np

subject = np.arange(start = 1, stop = 7, step = 1)
gender = np.random.choice(a = ("female", "male"), size = 6, replace = True)
age = np.random.uniform(low = 15, high = 40, size = 6)
depression = np.random.binomial(n = 1, p = 0.15, size = 6)

my_data = {"subject": subject,
           "gender": gender,
           "age": age,
           "depression": depression}

# 2. create a data frame

df = pd.DataFrame(my_data)

# 3. export as a csv

df.to_csv("week 1 assignment", index = False)


