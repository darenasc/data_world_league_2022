library(tidyverse)
library(lubridate)

gdp <- read_csv(here::here("data", "austin-gdp.csv"))

waste %>%
  filter(date < as.Date("2021-07-01")) %>%
  mutate(monthly = floor_date(date, "month")) %>%
  group_by(monthly, year) %>%
  summarise(monthly_weight = sum(daily_weight)) %>%
  mutate(monthly_weight_indexed = (monthly_weight * 100) / 26066237) %>%  # quick fixes for indexing
  inner_join(gdp %>%
               rename(GVA = NGMP12420) %>%
               mutate(year = year(DATE),
                      GVA_indexed = (GVA * 100) / 55452)) %>%
  ggplot(aes(x = monthly, y = monthly_weight_indexed)) +
  geom_line() +
  geom_col(aes(y = GVA_indexed), alpha = 0.3)
