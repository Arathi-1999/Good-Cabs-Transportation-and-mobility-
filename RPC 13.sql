use targets_db;
use trips_db;

--- Ad-HOC Requests---

/*1. City Level Fare and Trip summary Report */
select city_name, count(trip_id) as total_trips,
round((sum(fare_amount)/sum(distance_travelled_km)),2) as avg_fare_per_km,
round((sum(fare_amount)/count(trip_id)),2) as avg_fare_per_trip,
round(((count(ft.trip_id) /(select count(trip_id) from fact_trips))*100),2) as 
city_percent_contribution
from fact_trips ft 
inner join dim_city dc
on ft.city_id = dc.city_id
group by dc.city_name;

 
/*2. Monthly City Level Trips Target Performance Report */
with actual_trip as( select dc.city_name, d.month_name,
count(ft.trip_id) as actual_trip
from fact_trips ft
join dim_city dc on ft.city_id = dc.city_id
join dim_date d on d.date = ft.date
group by dc.city_name, d.month_name ) ,
target_trips as ( select dc.city_name, d.month_name,
sum(total_target_trips) as target_trips
from targets_db.monthly_target_trips mt
join dim_city dc on dc.city_id = mt.city_id
join dim_date d on d.date = mt.month
group by dc.city_name, d.month_name
)
select at.city_name, at.month_name, at.actual_trip,t.target_trips,
case when t.target_trips = 0 then null
else round(((actual_trip - target_trips) / Nullif(target_trips, 0))* 100,2)
end as percent_difference,
case when actual_trip > target_trips then "Above Target"
else "Below Target"
end as performance_status
from actual_trip at
join target_trips t
on at.city_name = t.city_name and at.month_name = t.month_name 
order by at.city_name, at.month_name;

/* 3. City Level Repeat Passenger Trip Frequency Report */
with repeat_passengers as(
select dc.city_name, dr.city_id, 
sum(case when dr.trip_count = "2-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_2,
 sum(case when dr.trip_count = "3-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_3,
 sum(case when dr.trip_count = "4-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_4,
 sum(case when dr.trip_count = "5-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_5,
 sum(case when dr.trip_count = "6-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_6,
 sum(case when dr.trip_count = "7-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_7,
sum(case when dr.trip_count = "8-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_8,
 sum(case when dr.trip_count = "9-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_9,
 sum(case when dr.trip_count = "10-Trips" then dr.repeat_passenger_count else 0 end)
 as trip_10
 from dim_repeat_trip_distribution dr
 join dim_city dc on dr.city_id = dc.city_id
 group by 1, 2)
 select rp.city_name,
concat(round(trip_2 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_2",
concat(round(trip_3 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_3",
concat(round(trip_4 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_4",
concat(round(trip_5 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_5",
concat(round(trip_6 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_6",
concat(round(trip_7 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_7",
concat(round(trip_8 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_8",
concat(round(trip_9 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_9",
concat(round(trip_10 /sum(dr.repeat_passenger_count)*100,2),"%") as "Trip_10"
from repeat_passengers rp
join dim_repeat_trip_distribution dr
on rp.city_id = dr.city_id
group by rp.city_id;


/* BR4. Identify Cities with Highest and Lowest Total New Passengers */
-- cities with highest total new passengers --
with a as(
select city_id,  sum(fp.new_passengers) as total_new_passengers
from fact_passenger_summary fp
group by city_id ),
b as( 
select city_name, total_new_passengers,
rank() over(order by total_new_passengers desc) as rnk
from a 
join dim_city dc on a.city_id = dc.city_id),
c as (
select city_name, total_new_passengers,
(case when rnk <=3 then "top 3"
when rnk >=7 then "bottom 3"
else "middle rank" end ) as city_categories
from b 
group by city_name, total_new_passengers) 
select city_name, total_new_passengers, city_categories from c
where city_categories ="top 3" or city_categories = "bottom 3";


/* BR5. identify The month with the Highest Revenue for each City */
with city_revenue as (
select dc.city_name, month_name,
 sum(ft.fare_amount) as revenue
from fact_trips ft
join dim_city dc on dc.city_id = ft.city_id
join dim_date d on d.date = ft.date
group by dc.city_name, month_name
),
city_total_revenue as (
select city_name,  sum(revenue) as total_revenue
from city_revenue 
group by city_name 
),
city_max_revenue as(
select cr.city_name, cr.month_name as highest_revenue_month, 
cr.revenue, ct.total_revenue,
(cr.revenue * 100.0) / ct.total_revenue as percentage_contribution
from city_revenue cr
join city_total_revenue as ct
on cr.city_name = ct.city_name
where cr.revenue = (select max(revenue) from city_revenue 
where city_name = cr.city_name )
)
 select city_name, highest_revenue_month, revenue,
 cast(percentage_contribution as decimal(10,2)) as percent_contribution
 from city_max_revenue
 order by city_name;
 
 /* BR6. Repeat Passenger rate Analysis */
 select dc.city_name, d.month_name, repeat_passengers,
 total_passengers,
 round((
 sum(fp.repeat_passengers)*100)/sum(fp.total_passengers),2) 
 as repeat_passenger_rate
 from dim_city dc
 join fact_passenger_summary fp
 on dc.city_id = fp.city_id
 join dim_date d 
 on d.start_of_month = fp.month
 group by dc.city_name, d.month_name, repeat_passengers, total_passengers
 order by repeat_passenger_rate desc;
