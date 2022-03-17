library(astsa)
library(tidyverse)
library(lubridate)

waste <- read_csv(here::here("data", "clean_waste_data.csv"))

waste_monthly <- waste %>%
  filter(date < as.Date("2021-07-01")) %>%
  mutate(monthly = floor_date(date, "month")) %>%
  group_by(monthly) %>% # Load.Type
  summarise(monthly_weight = sum(daily_weight))

waste_ts <- ts(waste_monthly$monthly_weight, start = c(2005, 01), frequency = 12)

acf1(waste_ts)
acf1(waste_ts, pacf = TRUE)

diff(waste_ts) %>% plot()
diff(waste_ts) %>% acf1()
diff(waste_ts) %>% acf1(pacf = TRUE)

arima011 <- sarima(waste_ts,
                   p = 0, d = 1, q = 1)
arima011$fit

sarima011001 <- sarima(waste_ts,
       p = 0, d = 1, q = 1,
       P = 0, D = 0, Q = 1, S = 12)

sarima011002 <- sarima(waste_ts,
                       p = 0, d = 1, q = 1,
                       P = 0, D = 0, Q = 2, S = 12)

# far from perfect but seems a reasonable fit
# let's see if we can convince ourselves!
window(waste_ts, start = 2012) %>% plot(type = "b")

# decent-looking forecast over last 6 months
waste_ts_to_2020 <- window(waste_ts, end = 2021-0.0001)
sarima.for(waste_ts_to_2020,
           n.ahead = 6,
           p = 0, d = 1, q = 1,
           P = 0, D = 0, Q = 2, S = 12)

# but looks like you need D = 1 as well to get better long-term forecast
sarima011012 <- sarima(waste_ts,
                       p = 0, d = 1, q = 1,
                       P = 0, D = 1, Q = 2, S = 12)


window(waste_ts, start = 2012) %>% plot(type = "b")

# decent-looking forecast over last 6 months
waste_ts_to_2020 <- window(waste_ts, end = 2021-0.0001)
sarima.for(waste_ts_to_2020,
           n.ahead = 6,
           p = 0, d = 1, q = 1,
           P = 0, D = 1, Q = 2, S = 12)

# and a decent fit on the last 2 years before the pandemic
window(waste_ts, start = 2009.1, end = 2020-0.0001) %>% plot(type = "b")

waste_ts_to_2017 <- window(waste_ts, end = 2018-0.0001)
sarima.for(waste_ts_to_2017,
           n.ahead = 24,
           p = 0, d = 1, q = 1,
           P = 0, D = 1, Q = 2, S = 12)
