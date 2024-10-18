library(pacman)
pacman::p_load(rio, here, skimr, tidyverse)

alzheimer_data <- import(here("data", "alzheimers_data_clean.csv"))

nrow(alzheimer_data)

# summary table

skim(alzheimer_data, starts_with("symptom_"))

# distribution of MMSE score

plot_mmse <- alzheimer_data %>% 
  ggplot(aes(x = mmse)) +
  geom_density(color = "blue")
