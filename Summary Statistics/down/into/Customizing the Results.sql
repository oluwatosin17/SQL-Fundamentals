SELECT SUM(Total) AS num_students
FROM jobs.recent_grads;

SELECT SUM(Total) AS "Total Student"
FROM jobs.recent_grads;

SELECT SUM(Total)  "Total Student"
FROM jobs.recent_grads;

SELECT Major_category AS mc
FROM jobs.recent_grads;

SELECT Major m, Major_category mc, Unemployment_rate ur
FROM jobs.recent_grads
WHERE(mc = "Engineering") 
AND (ur > 0.04 and ur < 0.08)
ORDER BY ur DESC;

#Write a query that returns the following order
#1. The number of rows as Number of Majors
#2.The maximum value of Unemployment_rate as Highest Unemployment Rate

SELECT COUNT(*) "Number of Majors", MAX(Unemployment_rate) "Highest Unemployment Rate"
FROM jobs.recent_grads