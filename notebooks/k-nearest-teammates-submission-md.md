### Problem
Austin Texas has a goal for a 90% reduction in waste sent to landfill by 2040. Can we predict reductions in waste and create insights to help them hit the goal?

### Method
We all did some EDA on the time series at various levels of granularity. We then took different time series modelling approaches to try to explain the patterns we saw in the data.

### Outline solution
Using Prophet we could create a reasonable forecast of both garbage and recycling waste that had a plausible trend, seasonality and day of week component.
The models suggest that garbage collections are peaking and trending down in line with the 2040 plan - although there might be some influence from the pandemic period.
Conversely, recycling is rising on a steady trend.

We interpret this as positive for Austin's plans and a good proof of concept for decoupling waste from continuing economic and population growth. The 3 R's (reduce, reuse and recycle) help cut down the amount of waste we throw away. Policies should focus more in reduce and reuse and not that much on recycle. Ideas for reduce: introduce a packaging-waste-score to label new products so that the consumer knows how good/bad the packaging is or even tax higher products with bad scoring . Ideas for reuse: promote buy nothing groups. 

Tailored forecasts of this kind - showing you how much waste your community was expected to produce, and how this would be influenced by different policies, could be used for awareness-raising and sharing Austin's model of waste management to other cities.

### Extensions & reflections
We did try some ARIMA modelling which produced plausible forecasts but was not very insightful when it came to trends and drivers.
