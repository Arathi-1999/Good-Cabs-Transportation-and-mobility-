## **🚕** Good-Cabs-Transportation-and-mobility-

## Problem Statement: 
Goodcabs has been operating in tier-2 cities for two years, but it is still far from reaching its market penetration goals. Despite establishing a solid presence in these areas, the company is struggling to meet its ambitious 2024 targets.

To overcome this challenge, Goodcabs needs an in-depth analysis of key performance metrics. This analysis will help identify critical growth opportunities and resolve operational inefficiencies that are hindering progress.

## **🎯** Project Objective:
The objective of this project is to conduct a comprehensive analysis of Goodcabs performance across key metrics — such as trip volume, passenger satisfaction, retention rates, trip distribution, and the balance between new and repeat passengers. By evaluating these metrics, the project aims to identify critical growth opportunities, address operational inefficiencies, and provide actionable insights to help Goodcabs achieve its market penetration goals and meet its ambitious targets for 2024.

The insights from this analysis will support strategic decision-making and drive the company’s growth in tier-2 cities.

## Data Overview:

Received two SQL databases and eight CSV files for analysis. However, I primarily worked with the SQL databases, using the CSV files for cross-verification purposes.

The two databases are as follows:

   1. trips_db: Contains fact tables (fact_trips, fact_passenger_summary) and dimension tables (dim_date, dim_city, dim_repeat_trip_distribution).
   2. targets_db: Contains city- and month-specific target tables (monthly_target_trips, monthly_target_new_passengers, city_target_passenger_rating).
   3. 
The dataset spans from January 1, 2024, to June 30, 2024.

## **🔍** Insights:

**1. Top Performing Cities:**  

   **▫️** **Jaipur** is the top performing city with the highest total trips, followed by **Lucknow** and **Surat**. 
   **▫️** On the other hand, **Mysore** has the lowest total trips , followed by **Coimbatore** and **Vishakapatnam**

**2. Average Fare Per Trip by City:**

   **▫️** **Jaipur** ranks first with an average Fare of **₹484** per trip and an average trip distance of **30km** , indicating a high fare efficiency relative to the distance.  
 
   **▫️** **Surat** ranks lowest with an average Fare of **₹117** per trip and an average trip distance of **11km**, indicating a potential gap in pricing efficiency.

**3.  Average Ratings by City and Passenger Type:** 
    **▫️** **Kochi**, **Jaipur** and **Mysore** have highest Avg Passenger Ratings and Driver Ratings.  
    **▫️** **Surat**, **Lucknow** and **Vadodara** have lowest Avg Passenger Ratings and Driver Ratings.

**4. Peak and Low Demand Month by City:**

   **▫️**Peak demand month: February , April and May
   
   **▫️**Low demand month: January and June.

 **5. Weekend vs Weekday Trip Demand by City:**      **▫️** Weekday trips are highest in **Lucknow** followed by **Jaipur** and **Surat**.  
 
   **▫️** Weekend trips are highest in **Jaipur**, **Kochi** and **Indore**.

 **6. Repeat Passenger Frequency and City Contribution Analysis:**
 
**1.Top Cities by Revenue Contribution:**
Jaipur (₹37.21M), Kochi (₹17.00M), and Chandigarh (₹11.06M) are the top 3 cities by revenue contribution.

**2.Bottom Cities by Revenue Contribution:**
Mysore (₹4.05M), Vadodara (₹3.80M), and Coimbatore (₹3.52M) are the bottom 3 cities by revenue contribution.

**3. Monthly Revenue Contribution:**
   February (18.36%) contributes the most to revenue.
   June (14.19%) contributes the least to revenue.
   
**4. Top Cities by Trip Volume:**
Jaipur (18.05%), Lucknow (15.10%), and Surat (12.88%) are the top 3 cities by trip volume.

**5. Bottom Cities by Trip Volume:**
Visakhapatnam (6.66%), Coimbatore (4.96%), and Mysore (3.81%) are the bottom 3 cities by trip volume.

**6. Fare and Trip Distance Insights:**
Jaipur reports the highest average fare per trip (₹483.92) and the highest average trip distance (30.02 km).
Surat reports the lowest average fare per trip (₹117.27) and the lowest average trip distance (11 km).

**7. Average Passenger Ratings:**
Tourist cities such as Mysore (8.70), Jaipur (8.58), and Kochi (8.52) have the highest average passenger ratings.
Business-focused cities such as Vadodara (6.60), Lucknow (6.40), and Surat (6.40) have the lowest average passenger ratings.

**8. Trip Demand Patterns:**
Tourist cities like Jaipur, Kochi, and Mysore show high weekend trip demand.
Business-focused cities like Lucknow, Surat, and Vadodara show high weekday trip demand.

**9. Repeat Passenger Rate (RPR):**
Surat (42.63%) and Lucknow (37.12%) have the highest Repeat Passenger Rates.
Mysore (11.23%) and Jaipur (17.43%) have the lowest Repeat Passenger Rates.


