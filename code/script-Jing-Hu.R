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

nba <- read.csv("../data/nba2018-players.csv", sep = ",",header = TRUE)
warriors <- arrange(filter(nba,team=="GSW"),salary)
write.csv(warriors,file = "../data/warriors.csv",row.names = FALSE)

sink(file = '../output/data-structure.txt')
str(nba)
sink()

sink(file = '../output/summary-warriors.txt')
summary(warriors)
sink()

lakers <- arrange(filter(nba,team=="LAL"),salary)
sink(file = '../output/summary-lakers.txt')
summary(lakers)
sink()

jpeg(filename = "../images/histogram-age.jpeg")
hist(nba$age)
dev.off()

png(filename = "../images/scatterplot2-height-weight.png", pointsize = 20)
plot(nba$height, nba$weight,  pch = 20,  xlab = 'Height', ylab = 'Weight')
dev.off()


ggplot(nba)+
  geom_point(aes(x=height,y=weight))+
  facet_grid(.~position)
ggsave("../images/height_weight_by_position.pdf")








