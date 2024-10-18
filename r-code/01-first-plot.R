library(pacman)
pacman::p_load(rio, here, skimr, tidyverse)

alzheimer_data <- import(here("data", "alzheimers_data_clean.csv"))

# my first plot

plot_mmse <- alzheimer_data %>% 
  ggplot(aes(x = mmse)) +
  geom_density(color = "red")