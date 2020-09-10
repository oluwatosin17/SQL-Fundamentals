#In this project i'll be working with data from CIA World Factbook, i'll 
# be using sql to explore data from the database

# Write a query to return the information on the tables in the database
SELECT *
FROM facts.facts;

show columns
from facts.facts;

#The first five rows of facts
select *
from facts.facts
limit 5;

#Summary Statistics
 select min(population) "Minimum Population", max(population) "Maximum Population",
 min(population_growth) "Minimum Population Growth", max(population_growth) "Maximum Population Growth"
 from facts.facts;
 
#Write a query that returns the countrie(s) with the minimum population
#Write a query that returns the countrie(s) with the maximum population
select  name , min(population) "Minimum Population"
from facts.facts;

select  name , max(population) "Maximum Population"
from facts.facts;

select *
from facts.facts
where name in ("World");

#exclude the row for the world  and recalculate
select min(population) "Minimum Population", max(population) "Maximum Population",
 min(population_growth) "Minimum Population Growth", max(population_growth) "Maximum Population Growth"
 from facts.facts
 where  name != ("World");
 
 select round(avg(population),3) avg_population,round(avg(area),3)
 from facts.facts 
  where  name != ("World");
  
  #Write a query that finds all countries meeting both the following conditions
  #The population is above average
  #The area is below average
  
select *
from facts.facts
 where population > ( select avg(population)
 from facts.facts
 where name != ("World")) and area < (select avg(area) 
 from facts.facts
 where name != ("World"));
 
 #What country has the most people 
 select name "Highest Populated Country" , population
 from facts.facts
 where population = (select max(population) 
 from facts.facts  
 where name <> "World");
 

 #What country has the highest growth rate
  select name "Highest Populated Country" , max(population_growth) value
 from facts.facts
 where name <> "World";
 
 #Which country has the highest ratios of water to land 
 select name "Highest Water Ratio Country", area_land,area_water,max(area_water/area_land) ratio
 #max(round(cast((area_water) as float)/ cast((area_land) as float),2)) value
 from facts.facts
 where name <> "World";
 
 #which country will add the most people to their population next year?
select name country,population,population_growth,population*population_growth new_population
from facts.facts
where name != "World"
order by new_population desc
limit 10;
 
 #Which country has more water than land
 select name, area_water,area_land
 from facts.facts
 where name != "World" and area_water > area_land
 order by area_water desc
 limit 5;
 
 #Which country has a higher death rate than birth rate
 select name , death_rate, birth_rate
 from facts.facts
 where name != "World" and death_rate > birth_rate 
 order by death_rate desc
 limit	5;
 
 #What countries has the highest population density
 select name ,population, area , population/area population_density
 from facts.facts
 where name != "World" 
 order by population_density desc
 limit 5;