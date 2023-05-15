library("tidyverse")
library("openintro")

fastfood <- force(fastfood)

mcdonalds <- fastfood %>% filter(restaurant == "Mcdonalds")
dq <- fastfood %>% filter(restaurant == "Dairy Queen")


ggplot(dq, aes(x = cal_fat)) + geom_histogram()
ggplot(dq, aes(sample = cal_fat)) + geom_line(stat = "qq") 

qqnorm(mcdonalds$cal_fat); qqline(mcdonalds$cal_fat)

qqnormsim(sample = cal_fat, data = mcdonalds)

