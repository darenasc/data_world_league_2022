# Data World League 2022

# [Stage 2 - Cascais](https://drive.google.com/file/d/1AHOGNu2cQjnZI5htiPkKlhPDSpC0_XI0/view)

## Goal
The goal is to model, from the point of view of trends, which routes of the transport road network suffer the most cuts/disturbance due to interventions on public roads. We intend to evaluate the effort needed to adapt our services to match the network's needs in the presence of disruptions due to physical obstacles preventing circulation along usual routes. Additionally, we would like to evaluate and quantify levels of the perception of "inconvenience" by network users caused by different disruptions.

## Outcome
The outcome should focus on two main aspects:
- A data analysis of the most interrupted routes, trends in interruptions and
locations with the highest amount of interruptions.
- A route optimization model/approach which minimizes the disturbances for
passengers (e.g. travel time and location of new stops). The model should be tested
with several interruptions.

Finally, don’t forget to propose the application (product) for the model and study its impact.

## Resources
Available Resources
All the data resources can be found here: https://dadosabertos.cascais.pt/. The link to specifica datasets can be found below.
As a reminder, you can also use any data that is open, free and legally available.
The following list of resources is available for you to use:
- [GTFS Public Transport Network of Cascais](https://dadosabertos.cascais.pt/dataset/gtfs-mobicascais)
- [Bus Routes](https://dadosabertos.cascais.pt/dataset/carreira-de-autocarro/)
- [Road Network](https://dadosabertos.cascais.pt/dataset/eixo-de-via/)
- [Interventions in public roads](https://dadosabertos.cascais.pt/dataset/obras-de-intervencao-na-via-publica)
- [Google OR Tools Vehicle Routing](https://developers.google.com/optimization/routing)
- [Google Direction API](https://developers.google.com/optimization/routing/google_direction)

The description of the datasets can be found in the [dictionary](https://docs.google.com/spreadsheets/d/10IUS4sdJPEgGHunAlUyG50ww2Kntt69MFSnePL5h-BU/edit#gid=850019181).

## Submissions

Deadline: Wed, 22 April 23h59 AoE (Anywhere on Earth)

# [Stage 1 - Environment](https://challenges.worlddataleague.com/event/world-data-league-2022/stage-1#challenges)

## [1. Predict Waste Production for its Reduction](https://drive.google.com/file/d/1KbBl0-8da1YezzS7x6w9DVN61eliLPY9/view)
[pdf](docs/files/UrbanAI Challenge.pdf)

[According to the World Bank](https://datatopics.worldbank.org/what-a-waste/), in 2016 cities generated 2.01 billion tons of solid waste. Per person, this is around 0.74 kg/day! With the rapid growth of cities, this number is only expected to increase. As cities are growing, it is urgent that optimization processes for waste processing and more targeted public education on waste management and separation. Finally, it is also important to note that waste collection also has an impact on air pollution.

### **Goal**
The goal of this challenge is to help identify trends in waste production and help to create insights into how to reduce waste and optimize its collection.

### **Outcome**
The expected outcome to this challenge is to identify waste trends and to produce an explainable model for predicting future waste production.
Finally, don’t forget to propose the application (product) for the model and study its impact.

**Resources**
* [Daily Waste Collection Report for Austin](https://data.austintexas.gov/Utilities-and-City-Services/Waste-Collection-Diversion-Report-daily-/mbnu-4wq9)
* [Garbage Routes for Austin](https://data.austintexas.gov/Locations-and-Maps/Garbage-Routes/azhh-4hg8)
* [Population per year (1840-2016)](https://www.austintexas.gov/sites/default/files/files/Planning/Demographics/population_history_pub.pdf)
* [2020 Census Data on Austin](https://www.census.gov/quickfacts/fact/dashboard/austincitytexas/LND110210)
* OpenWeather API

## [2. Air Quality Prediction in Busy Streets](https://drive.google.com/file/d/1iqNzTNHwcaJzEZiZR3ImiZtlaNz6o4o5/view?usp=sharing)
[pdf](docs/files/UNStudio Challenge.pdf)

### **Goal**
The goal of this challenge is to help the initiators of the project create a case and buzz for the needed change in the street and more specifically for the current impact it has on air pollution.

### **Outcome**

Create an explainable predictive model for the different pollutants that are produced at Stadhouderskade and suggest how:
* It can be used by the Green Mile project to persuade governmental bodies and the public in the need for change;
* It can be used to create and influence the Green Mile (example: Can restrictions be applied based on the model’s predictions? Any warning system?)

Resources

* [Hourly measurements of different air pollutants](https://wdl-data.fra1.digitaloceanspaces.com/unstudio/stadhouderskade_air_quality_2014_to_2022.csv) at Stadhouderskade.
    * Please note, even though CO2 measurements are not provided, NOx is
provided which is also a dangerous car pollutant.
* OpenWeather API

The description of the datasets can be found in the [dictionary](https://docs.google.com/spreadsheets/d/1_MkEoFxKqTQWlxiWZMFUYxXFK0jZ98tDqiSpFIS_zEE/edit?usp=sharing).

As a reminder, you can also use any data that is open, free and legally available - And [Amsterdam has over 300 datasets](https://data.amsterdam.nl/) (If your dutch is a bit rusty, you should use Google Translate ;)).

**Submissions**

Deadline: Wed, 23 March 23h59 AoE (Anywhere on Earth)

Don’t forget that you will need to submit the solution report (notebook template with the link below) and executive summary (markdown template below). You also need to submit a 3-minute video summary of your solution.
Solution report template: https://bit.ly/wdl_2022_jupyter_template Executive summary template: https://bit.ly/wdl_2022_exec_sum