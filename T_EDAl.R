library(funModeling)
library(dplyr)
library(DataExplorer)
library(tidyverse)
library(Hmisc)
library(rpart)
library(car)
library(e1071)
#choose dataset
data <- read.csv(file.choose())
View(data)
summary(data)

df_status(data)
mydata_status <- df_status(data)
col_to_remove <- filter(mydata_status, p_zeros >60) %>% .$variable
col_to_remove

mydata <- data[,-c(8,9,11,12,15,18,19,20,21,22,24,25,26,27,29,30,31,32,33,34,35,36,37,38,39)]
View(mydata)

# plotting variables
plot_str(data)
profiling_num(data)
plot_num(data)

plot_missing(data)

plot_histogram(data)
plot_density(data)
#plot_correlation(data, type = "continuous")

# Report for "data"
create_report(data)

