library("tidyverse")
library("openintro")
library("statsr")
library("broom")

freedomData <- force(hfi)

cols = c("year", "countries", "region", "pf_expression_control", "hf_score", "pf_score")

filteredData <- freedomData %>% select(all_of(cols)) %>% filter(year == "2016")

ggplot(filteredData, aes(x = pf_expression_control, y = pf_score, ymin = 0)) + geom_point() + geom_smooth()

r <- filteredData %>% summarise(r = cor(pf_expression_control, pf_score)) %>% pull(r)

plot_ss(x = pf_expression_control, y = pf_score, data = filteredData)

model <- lm(pf_score ~ pf_expression_control, data = filteredData)

