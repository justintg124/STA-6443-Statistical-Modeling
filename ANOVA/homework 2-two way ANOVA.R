
#install packages
install.packages("tidyverse")
install.packages("readxl")

#load packages
library(tidyverse)
library(readxl)
setwd("C:/Users/justi/OneDrive/Desktop/Grad School/UTSA 1st semester/STA 6443 Statistical Modeling")


#create tables for both datasets
medical1 <- read_excel("medical1.xlsx")
medical2 <- read_excel("medical2.xlsx")


# Question 1
#running eda and descriptive stats
summary(medical1)
summary(medical2)

#Question 2
#creating a table for medical data to fit anova
medical1_summary <- medical1_long %>% group_by(State) %>%
  +     summarise(
    +         Mean_Score = mean(Score),
    +         SD_Score   = sd(Score),
    +         n          = n())