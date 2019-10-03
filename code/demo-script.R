# ===================================================================
# Title: lab05-unix-git
# Description: r script in lab05
# Input(s): data file 'nba2018-players.csv'
# Output(s): summary data files, and plots
# Author(s): Jing Hu
# Date: 10-03-2019
# ===================================================================

# packages
library(dplyr)    # data wrangling
library(ggplot2)  # graphics

nba <- read.csv("nba2018-players.csv", sep = ",")
warriors <- arrange(filter(nba,team=="GSW"),salary)
write.csv(warriors,file = "../data/warriors.csv",row.names = FALSE)
