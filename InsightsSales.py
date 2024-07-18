import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
#Importing the required packages

BPsales = pd.read_csv("D:\Git\GitLearningT\SQL\RestaurantProject\CounterDataSales.csv")
# Loading the dataset into Dataframe

print(BPsales.to_string(),"\n\t")
# Printing All Values in the Table

BPsales.plot(kind = 'bar',x= 'Emp_ID' , y = 'Total_Price')
plt.xlabel("Employee_ID")
plt.ylabel("Sale Price")
plt.show()
#Plotting the bar graph of EMP_ID VS Total_Price

print(BPsales.describe())
# Gives the mean, median, mode, STD, 25%,...