#Write a query that counts the number of rows in recent_grads followed by by the 
#one that has at least one missing value
SELECT COUNT(*), COUNT(Unemployment_rate)
FROM jobs.recent_grads