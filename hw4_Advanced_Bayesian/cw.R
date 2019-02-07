library(tidyverse)
cities <- read_csv('cw4task1.csv')

cities %>% 
  filter(city == 'Auckland') %>% 
  count(events == 'Rain') -> rain_Auckland
p_r_A <- rain_Auckland[2,2]/sum(rain_Auckland[2])

cities %>% 
  filter(city == 'Auckland') %>% 
  count(events == 'Rain , Thunderstorm') -> rain_thunderstorm_Auckland
p_t_A <- rain_thunderstorm_Auckland[2,2]/sum(rain_thunderstorm_Auckland[2])

cities %>% 
  filter(city == 'San Diego') %>% 
  count(events == 'Rain') -> rain_San_Diego
p_r_S <- rain_San_Diego[2,2]/sum(rain_San_Diego[2])

cities %>% 
  filter(city == 'San Diego') %>% 
  count(events == 'Rain , Thunderstorm') -> rain_thunderstorm_San_Diego
p_t_S <- rain_thunderstorm_San_Diego[2,2]/sum(rain_thunderstorm_San_Diego[2])

L_S <- p_t_S * p_r_S
L_A <- p_t_A * p_r_A

L_S/L_A
