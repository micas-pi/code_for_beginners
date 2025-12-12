#### PYTHON FOR BEGINNERS ASSIGNMENT WEEK 1 MICHAL CASPI 313470551 ####

# 1. create a data set

import pandas as pd

my_data = {"patient": [1, 2, 3, 4, 5, 6],
           "gender": ["male", "male", "female", "female", "female", "male"],
           "age": [17, 19, 27, 31, 37, 41],
           "depression": [True, False, False, True, True, False]}

# 2. create a data frame

df = pd.DataFrame(my_data)

# 3. export as a csv

df.to_csv("week 1 assignment", index = False)