# World Data League 2022

## Executive Summary Template
This executive summary is one of the mandatory deliverables when you submit your solution. Its structure follows the WDL evaluation criteria and it has dedicated sections where you should add information. Make sure your executive summary covers all the sections since it will be an integral part of the Insights Report and your evaluation. Make sure your content is relevant and straight to the point.
**There is no need to reach the maximum number of words.**

Instructions:

1. 🧱 Create a separate copy of this template and do not change the predefined structure
2. 👥 Fill in the Authors section with the name of each team member
3. ✏️ Write your executive summary - make sure you write to a non-technical crowd. You can refer to images that are in the Submission Notebook.
4. 📄 Fill in all the text sections
5. 🗑️ Remove this section (‘Executive Summary Template’) and any instructions inside other sections
6. ⬆️ Upload the .md file to the submission platform.

## 🎯 Challenge
Predict Waste Production for its Reduction

## 👥 Authors
  * Claire Benard
  * Diego Arenas
  * Natalie Muenter
  * Tom Constant
  * Tom Wagstaff

## ✨ Introduction (250 words max)
Austin Texas has a goal for a 90% reduction in waste sent to landfill by 2040. Can we predict reductions in waste and create insights to help them hit the goal?

## 🔢 Data (250 words max)
<!-- Explain what data you used (both provided by WDL and external) and improvements you suggest to those datasets. Explain how those improvements would lead to a better solution. -->

We used the [Austin Resource Recovery daily report](https://data.austintexas.gov/Utilities-and-City-Services/Waste-Collection-Diversion-Report-daily-/mbnu-4wq9) dataset combining it with population per year.

We did exploratory data analysis explored the dataset identifying the target variable and its distribution by load type. We ranked the load types that generate most of the 

From the data portal of Austin, Texas we downloaded the geospatial information about routes. Not all the routes were available in the dataset but we could expore the information for 219 routes and generate features using the infrastructure around the routes from OpenStreetMap.

Combining the daily weight of waste with the population, we generated a target variable to estimate the *waste per person*. 

## 🧮 Methods and Techniques (250 words max)
<!-- Tell us what methods and algorithms you used and the results you obtained. -->

We used outlier detection to remove outliers from the daily values of waste weight and we aggregated the data per day, route, and type of waste.

We all did some EDA on the time series at various levels of granularity. We then took different time series modelling approaches to try to explain the patterns we saw in the data.

Using Prophet we could create a reasonable forecast of both garbage and recycling waste that had a plausible trend, seasonality and day of week component.

The models suggest that garbage collections are peaking and trending down in line with the 2040 plan - although there might be some influence from the pandemic period.

Conversely, recycling is rising on a steady trend.

We interpret this as positive for Austin's plans and a good proof of concept for decoupling waste from continuing economic and population growth.

Tailored forecasts of this kind - showing you how much waste your community was expected to produce, and how this would be influenced by different policies, could be used for awareness-raising and sharing Austin's model of waste management to other cities.

## 💡 Main Insights (300 words max)
When adjusting for population, waste has gone down by 27% since 2010. This downwards trend is also true when adjusting for GDP (as a proxy for economic activity). As the city is adopting a Repair, Reuse, Recycle strategy, it's insightful to look into how garbage and recycling evolved over time:

*  Both garbage and recycling follow a similar downward trend, which peaked in 2008 for garbage and 2009 for recycling
*  There is a clear break in trend in 2017 for garbage and 2016 for recycling, going down - which is encouraging for the city plans of going 0 waste by 2040
*  Across the year, there are some peak months that would be good opportunities to communicate around waste reduction: both garbage and recycling go up in the autumn and drop in February. The end of year would be a good time to communicate about the importance of waste reduction. Potentially encouraging repaired, refurbished and second hand gifts for the end of year festivities. Garbage, unlike recycling, peaks again in April.
*  Garbage is going down faster than recycling, possibly because there is a substitution effect as an effort is made to use more recyclable material. Communicating on repair is therefore critical to get to 0 waste.
* Forecasting gives encouraging results with the estimates being about +-10% of the true value on our test set. It is worth using this data to monitor progress against the city objective. More historical data on other factors influencing waste production could help understand which policies could make a step change in the trends.


## 🛠️ Product
### Definition
An app/dashboard with projected waste per day and person in Austin.

### Users
Anyone living in Austin could see in their phone/laptop how much waste they have produced over time and how much waste they will produce in the following years.

### Activities
*Predicts amount of weight(in pounds) per day and person
*Notify the users when the trend is going down or up with some tips and ideas in how to reduce waste at home  

### Output
A dashboard with:
* a dropdown to choose the type of load we want to see or if we want to see it all aggregated
* a plot with historical data and predicted data of amount of waste produced by person
* a infobox with the predicted amount generated by person by 2040 (to see if we reach city's goal) 

## 🌍 Social Impact Measurement
### Outcome
The product has the goal of increasing awareness. Fighting climate change is a team work and the best way of keeping everyone involved is to get them as informed as possible. Being aware of the tons of waste we generate individually could help people being more conscious about the problem.  

### Impact Metrics
* Change in the trend slope 

### Impact Measurement

Based on the predicted waste for garbage collection, by 2040 we will reach close to a 90% reduction from waste produced in 2010 by day and person. Recycling trend goes downwards but the slope is not that accentuated as for garbage collection.  

### Extensions & reflections
We did try some ARIMA modelling which produced plausible forecasts but was not very insightful when it came to trends and drivers.
We think that aggregating the data at a zipcode level instead of city level would have given us some interesting insights, we were not able to do that during the challenge time frame.
