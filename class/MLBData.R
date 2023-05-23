library(tidyverse)
library(openintro)
library(statsr)
library(broom)

data <- read.csv("class/mlb11.csv")

cor(data$bat_avg, data$runs)

model <- lm(runs ~ at_bats, data)
summary(model)


cor(dat)