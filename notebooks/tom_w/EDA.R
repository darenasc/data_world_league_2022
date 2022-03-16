library(tidyverse)
library(lubridate)

waste <- read_csv(here::here("data", "clean_waste_data.csv"))

# incomplete from July 2021
waste %>%
  count(year, month) %>% View()

# basic time series
waste %>%
  filter(date < as.Date("2021-07-01")) %>%
  mutate(monthly = floor_date(date, "month")) %>%
  group_by(monthly, Load.Type) %>% # Load.Type
  summarise(monthly_weight = sum(daily_weight)) %>%
  ggplot(aes(x = monthly, y = monthly_weight)) +
  geom_line() +
  stat_smooth() +
  facet_wrap(~Load.Type)

# quick look for seasonality - nothing much here
waste %>%
  filter(year < 2021) %>% # year incomplete
  group_by(month) %>%
  summarise(weight = sum(daily_weight)) %>%
  ggplot(aes(x = as.factor(month), y = weight)) +
  geom_col()

# yard-trimming is the only sub-group where season matters
waste %>%
  filter(year < 2021) %>% # year incomplete
  group_by(month, Load.Type) %>%
  summarise(weight = sum(daily_weight)) %>%
  ggplot(aes(x = as.factor(month), y = weight, fill = Load.Type)) +
  geom_col() +
  facet_wrap(~Load.Type)

# probably only enough data to talk meaningfully about BRUSH, BULK, GARBAGE COLLECTIOn, RECYCLING - SINGLE STREAM and YARD TRMMING

