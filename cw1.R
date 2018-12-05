library(tidyverse)

qnorm(0.25, mean = 20, sd = 90)

data_frame(x = seq(-4, 4, 0.1), 
           PDF = dnorm(x = x, mean = 0, sd = 1)) %>% 
  ggplot(aes(x, PDF))+
  geom_point()+
  labs(title = "PDF нормального распределения (μ = 0, sd = 1)")

qnorm(0.97, mean = 0, sd = 1)
qnorm(0.97)
