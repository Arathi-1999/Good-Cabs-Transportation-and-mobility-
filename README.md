## **🚕** Good-Cabs-Transportation-and-mobility-

## Problem Statement: 
Goodcabs has been operating in tier-2 cities for two years, but it is still far from reaching its market penetration goals. Despite establishing a solid presence in these areas, the company is struggling to meet its ambitious 2024 targets.

To overcome this challenge, Goodcabs needs an in-depth analysis of key performance metrics. This analysis will help identify critical growth opportunities and resolve operational inefficiencies that are hindering progress.

   -------------------------------------------

## **🎯** Project Objective:
The objective of this project is to conduct a comprehensive analysis of Goodcabs performance across key metrics — such as trip volume, passenger satisfaction, retention rates, trip distribution, and the balance between new and repeat passengers. By evaluating these metrics, the project aims to identify critical growth opportunities, address operational inefficiencies, and provide actionable insights to help Goodcabs achieve its market penetration goals and meet its ambitious targets for 2024.

The insights from this analysis will support strategic decision-making and drive the company’s growth in tier-2 cities.

  ------------------------------------------

## Data Overview:

Received two SQL databases and eight CSV files for analysis. However, I primarily worked with the SQL databases, using the CSV files for cross-verification purposes.

The two databases are as follows:

   1. trips_db: Contains fact tables (fact_trips, fact_passenger_summary) and dimension tables (dim_date, dim_city, dim_repeat_trip_distribution).
   2. targets_db: Contains city- and month-specific target tables (monthly_target_trips, monthly_target_new_passengers, city_target_passenger_rating).

The dataset spans from January 1, 2024, to June 30, 2024.

  -------------------------------------------

## **🔍** Insights:

## 1. Top Performing Cities:

   **▫️** **Jaipur** is the top performing city with the highest total trips, followed by **Lucknow** and **Surat**.
   
   **▫️** On the other hand, **Mysore** has the lowest total trips , followed by **Coimbatore** and **Vishakapatnam**

  -------------------------------------------

## 2. Average Fare Per Trip by City:

   **▫️** **Jaipur** ranks first with an average Fare of **₹484** per trip and an average trip distance of **30km** , indicating a high fare efficiency relative to the distance.  
 
   **▫️** **Surat** ranks lowest with an average Fare of **₹117** per trip and an average trip distance of **11km**, indicating a potential gap in pricing efficiency.

   ----------------------------------------

## 3.  Average Ratings by City and Passenger Type:

   **▫️** **Kochi**, **Jaipur** and **Mysore** have highest Avg Passenger Ratings and Driver Ratings.
   
   **▫️** **Surat**, **Lucknow** and **Vadodara** have lowest Avg Passenger Ratings and Driver Ratings.

  ----------------------------------------

## 4. Peak and Low Demand Month by City:

   **▫️**Peak demand month: February , April and May
   
   **▫️**Low demand month: January and June.

  -----------------------------------------

 ## 5. Weekend vs Weekday Trip Demand by City:
 
   **▫️** Weekday trips are highest in **Lucknow** followed by **Jaipur** and **Surat**.  
 
   **▫️** Weekend trips are highest in **Jaipur**, **Kochi** and **Indore**.

  -------------------------------------------

 ## 6. Repeat Passenger Frequency and City Contribution Analysis:

  **▫️**Higher trips count like **9-trips** and **10- trips** have very less repeat trips %.

  **▫️** Tourism focused cities like Jaipur, Mysore, Kochi has higher repeat trips % in lower trips count like 2 to 3-trips.

  **▫️**Business focused cities like Surat, Vadodara, Coimbatore, Lucknow has more distributed trips frequency from 2-trips to 7-trips count, indicating a strong reliance on daily commuters.
  
  **▫️**Jaipur peaks in February and March month and hits low in January.  

  -------------------------------------------

## 7. Monthly Target Achivement:

   **▫️** Top Performer: Visakhapatnam (Achieved near 100% targets)
   
   **▫️**Bottom Performer: Surat (Challenges in total trips and passenger ratings)

  -------------------------------------------
   
  ## 8. Highest and Lowest Repeat Passenger Rate (RPR) by City and Month:
  
   **▫️** Top 2 cities: Surat followed by Lucknow were top 2 cities with highest RPR%.
   
   **▫️** Bottom 2 cities: Mysore and Jaipur were the bottom 2 cities with lowest RPR%.
   
   **▫️** May had the highest RPR and January had the lowest RPR.
  
  -------------------------------------------
 
## Top Cities by Revenue Contribution:

  **▫️** Jaipur (₹37.21M), Kochi (₹17.00M), and Chandigarh (₹11.06M) are the top 3 cities by revenue contribution.

  -------------------------------------------

## Bottom Cities by Revenue Contribution:

  **▫️** Mysore (₹4.05M), Vadodara (₹3.80M), and Coimbatore (₹3.52M) are the bottom 3 cities by revenue contribution.

  -------------------------------------------
 
## Secondary Analysis:

## 1. Factors Influencing Repeat Passenger Rates: 

   **▫️** Higher repeat passenger rates may correlate with better passenger ratings, indicating quality service.

  **▫️** Competitive pricing might attract more repeat passengers in cities with a price-sensitive demographic.
   
  **▫️** Socioeconomic factors: Cities with higher-income groups may prefer premium services, whereas lower-income groups may prefer cost-effective services.
  
  **▫️**Lifestyle patterns: Cities with high professional populations (e.g., IT hubs) may show consistent repeat usage during weekdays.

  ----------------------------------------------
  
## 2. Tourism vs. Business Demand Impact: 

  **▫️** Cross-referenced trip data with event calendars (festivals, conferences, tourism seasons) over 6 months.
  
  **▫️** Cities with high tourism activities (e.g., Jaipur, Kochi) show demand spikes during festive seasons or vacations.
   
Business-oriented cities (e.g., Lucknow, Surat) show consistent weekday demand.
Emerging Mobility Trends and Goodcabs' Adaptation
Evaluate trends like adoption of electric vehicles, passenger preferences for green energy, and emerging mobility needs.
Electric Vehicle (EV) Adoption: Growing preference for green transport in tier-2 cities. EV could reduce operational costs and appeal to environmentally conscious passengers.
Sustainability Focus: Eco-conscious passengers favor ride-sharing and low-emission options.
Partnership Opportunities with Local Businesses
Reviewed trip destinations to identify potential partnerships with hotels, malls, and event venues.
Popular tourist destinations and business centers could be leveraged for tie-ups.
Partnerships with event venues (e.g., offering discounts for rides to events) could drive loyalty
Data Collection for Enhanced Data-Driven Decisions
Passenger data: Frequency of use, feedback on service quality, and referral usage.
Driver data: Availability, on-time performance, and training status.
Market trends: Competition metrics like pricing and service offerings in each city.
City-specific events: Add event calendars to better predict demand fluctuations



