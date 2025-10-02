-- What are the 5 cheapest restaurants based on avg_cost?
SELECT name, cuisine, avg_cost
FROM restaurants
ORDER BY avg_cost ASC
LIMIT 5;

-- Which nearby restaurants (within 5 miles) are highly rated (4.0+)?
SELECT name, cuisine, distance_miles, rating
FROM restaurants
WHERE distance_miles <= 5 AND rating >= 4.0
ORDER BY rating DESC, distance_miles ASC;

select * from restaurants limit 10;

--Return name, distance_miles for restaurants within 2.0 miles, ordered by distance.
select name, distance_miles
from restaurants
where distance_miles <= 2.0
order by distance_miles;

--Show the top 3 restaurants by rating (highest first).
select name, rating
from restaurants
order by rating desc
limit 3;

--List name, avg_cost and cost with 7.5% tax as cost_with_tax.
select name, avg_cost, (avg_cost * 1.075) as cost_with_tax
from restaurants;

--How many restaurants are there per cuisine, highest count first?
select cuisine, count(*) as restaurant_count
from restaurants
group by cuisine
order by restaurant_count desc;