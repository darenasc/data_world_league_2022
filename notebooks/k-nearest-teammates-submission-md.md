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
*Insert challenge name here*

## 👥 Authors
Include all the authors that have worked on this submission. It is not obligatory to include all the team members if not everyone has worked on it. This will not impact the evaluation in any way.
* Person 1
* Person 2
* Person 3

## ✨ Introduction (250 words max)
<!-- Provide a contextualization of the problem, together with an estimation of its size using real numbers and references. -->

Austin Texas has a goal for a 90% reduction in waste sent to landfill by 2040. Can we predict reductions in waste and create insights to help them hit the goal?

## 🔢 Data (250 words max)
<!-- Explain what data you used (both provided by WDL and external) and improvements you suggest to those datasets. Explain how those improvements would lead to a better solution. -->

We used the [Austin Resource Recovery daily report](https://data.austintexas.gov/Utilities-and-City-Services/Waste-Collection-Diversion-Report-daily-/mbnu-4wq9). 

We explored the dataset identifying the target variable and its distribution by load type. We ranked the load types that generate most of the 

We also used and explore external datasets such as the census that allowed us to estimate a target of *waste per person*. We explore the use of the GDP in and we explore the use of data from Open Map Street to create features of number of builinds, parks, shopping centers, etc. in the routes.

## 🧮 Methods and Techniques (250 words max)
<!-- Tell us what methods and algorithms you used and the results you obtained. -->

We all did some EDA on the time series at various levels of granularity. We then took different time series modelling approaches to try to explain the patterns we saw in the data.

Using Prophet we could create a reasonable forecast of both garbage and recycling waste that had a plausible trend, seasonality and day of week component.
The models suggest that garbage collections are peaking and trending down in line with the 2040 plan - although there might be some influence from the pandemic period.
Conversely, recycling is rising on a steady trend.

We interpret this as positive for Austin's plans and a good proof of concept for decoupling waste from continuing economic and population growth.

Tailored forecasts of this kind - showing you how much waste your community was expected to produce, and how this would be influenced by different policies, could be used for awareness-raising and sharing Austin's model of waste management to other cities.

## 💡 Main Insights (300 words max)
Explain what you discovered from addressing this problem, such as interesting facts or statistics.
*Write here*

## 🛠️ Product
### Definition
Define in **one sentence** what product(s) could be built out of the code you produced.
Example: A dashboard that assists in traffic control

### Users
Describe who would be the users of your product and for what purpose would they use it.
Example: Traffic controllers use the dashboard during their work to better plan where to dispatch resources

### Activities
Describe what features your product has.
Example:
* Predicts the most likely locations for traffic accidents
* Suggests the fastest route from dispatch centres

### Output
Describe what the product outputs to the users and how it does that. You can add mockups and/or visualisations.
Example: Location of the accident on a map and suggest the fastest route from the dispatch centre.

## 🌍 Social Impact Measurement
### Outcome
If the outputs are your immediate results, describe your long-term results. What do you want your product to achieve? What ''good'' are you creating?
Example: To decrease response time from dispatchers so that people in urgent need receive help faster.

### Impact Metrics
From the outcome, define **2 to 4 metrics** that measure if you are achieving that outcome or not.
Example:
* Average Dispatch Time
* Average Distance from Accident Location and Dispatch Center

### Impact Measurement
Since you cannot wait to see the impact of your product, estimate it. You can do that by either using the estimations/predictions of your model, market research, products from proxy industries and/or similar locations, etc.

Example:
* *Based on model predictions*: Our model estimates a decrease of 6 minutes of the average dispatch time and a decrease of the average distance of 200 meters
* *Based on proxy products*: Similar studies in other cities show that the dispatch time can be decreased by as much as 13 minutes, depending on the traffic intensity of that city.


### Extensions & reflections
We did try some ARIMA modelling which produced plausible forecasts but was not very insightful when it came to trends and drivers.
We think that aggregating the data at a zipcode level instead of city level would have given us some interesting insights, we were not able to do that during the challenge time frame.
