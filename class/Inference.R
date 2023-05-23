# 1 group   
format <- prop.test(x, n, alternative = "two.sided")

format <- prop.test(571, 670)
format

# 2 groups
prop.test(x = c(452, 69), n = c(680, 105), conf.level = 0.95)
