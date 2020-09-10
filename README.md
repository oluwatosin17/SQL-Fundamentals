# SQL-Fundamentals
## Introduction to SQL

Returning first 10 rows from a table:

`SELECT *
  FROM recent_grads
 LIMIT 10;`

Filtering return results:

`SELECT Major, Sharwomen
  FROM recent_grads
 WHERE ShareWomen < 0.5;`

Filtering results using multiple criteria:

`SELECT Major, Major_category, Median, ShareWomen 
  FROM recent_grads 
 WHERE ShareWomen > 0.5 
   AND Median > 50000;`

Filtering results using the OR clause:

`SELECT Major, Median, Unemployed
  FROM recent_grads 
 WHERE Median >= 10000 
    OR Unemployed <= 1000 
 LIMIT 20;`

Grouping using AND and OR with parentheses:

`SELECT Major, Major_category, ShareWomen, Unemployment_rate
  FROM recent_grads
 WHERE (Major_category = 'Engineering') 
   AND (ShareWomen > 0.5 OR Unemployment_rate < 0.051);`

Sorting results:

`SELECT Major, ShareWomen, Unemployment_rate 
    FROM recent_grads
   WHERE ShareWomen > 0.3 AND Unemployment_rate < 0.1
   ORDER BY ShareWomen DESC;`
 



   

## Summary Statistics
 Returning a count of rows in a table:

`SELECT COUNT(Major)

  FROM recent_grads`

Returning the minimum value of a table:
`
SELECT MIN(ShareWomen)

  FROM recent_grads;`

Computing the sum of a column as an integer:
`
SELECT SUM(Total)

  FROM recent_grads`

Computing the sum of a column as a float value:
`
SELECT TOTAL(Total)

  FROM recent_grads`

Specifying a name for a column in the results:
`
SELECT COUNT(*) AS 'Total Majors' -- also works without AS

  FROM recent grads`

Returning the unique values of a column:
`
SELECT DISTINCT Major_category

  FROM recent_grads`

Performing an arithmetic operation on a table:
`
SELECT P75th - P25th quartile_spread 

  FROM recent_grads`
  
  
 ## Group Summary Statistics
 
 Computing summary statistics by a unique value in a row:

`SELECT SUM(Employed)

FROM recent_grads

GROUP BY Major_category;`

Filtering results after aggregation:
`
SELECT Major_category, AVG(Employed) / AVG(Total) AS share_employed 

FROM recent_grads 

GROUP BY Major_category 

HAVING share_employed > 0.8;`

Rounding a column to two decimal places:
`
SELECT Major_category, ROUND(ShareWomen, 2) AS rounded_share_women 

FROM recent_grads;`

Converting, known as casting, a column to a float type:
`
SELECT CAST(Women as Float) / CAST(Total as Float) 

FROM recent_grads;`

Using if/then logic in SQL:
`
CASE

WHEN <condition_1> THEN <value_1>

WHEN <condition_2> THEN <value_2>

ELSE <value_3>

END AS <new_column_name>`

High-level structure of a query:

`SELECT column(s)

  FROM some_table

 WHERE some_condition

 GROUP BY column(s)

HAVING some_condition

 ORDER BY column(s)

 LIMIT some_limit;`

The order by which SQL runs the high-level structure above:

`FROM

WHERE

GROUP BY

HAVING

SELECT

ORDER BY

LIMIT`
