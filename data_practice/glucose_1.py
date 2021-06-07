import pandas as pd
import matplotlib.pyplot as plt
from matplotlib import dates as mpl_dates
import seaborn as sns

#
# with open('Diabetes-Data/data-01', 'r') as data_01:
#     for line in data_01:
#         line = line.strip()
#         line = line.replace('\t', ',')
#         print(line)

# load pandas df from tsv
df_1 = pd.read_csv('Diabetes-Data/data-01', sep='\t')
# print(df_1)

# add column names
df_1.columns = ['Date', 'Time', 'Code', 'Value']
# print(df_1)

# select only codes that represent glucose levels
df_glucose = df_1[df_1['Code'] >= 48]
# print(df_glucose)

# Need to figure out a way to combine date and time columns into a single datetime column
# which contains both date and time in a single pandas object
df_glucose['Datetime'] = df_glucose['Date'] + ' ' + df_glucose['Time']
# print(df_glucose)

# convert date values from strings into pandas date objects
df_glucose['Datetime'] = pd.to_datetime(df_glucose['Datetime'])
print(df_glucose)

# create graph
sns.lineplot(x=df_glucose['Datetime'], y=df_glucose['Value'])
plt.gcf().autofmt_xdate()
plt.show()
