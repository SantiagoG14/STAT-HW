data <- read.csv("class/Yan_LM.csv")

ggplot(data, aes(x = Love, y = MoneySpent)) + geom_point()

model <- lm(MoneySpent ~ Love, data = data)
tidy(model)

cor(data$Love, data$MoneySpent)

residuals <- residuals(model)

boxplot(residuals)

plot(residuals)

glance(model)

