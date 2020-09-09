SELECT Major , Major_category, Median, ShareWomen
FROM jobs.recent_grads
WHERE ShareWomen > 0.5 
AND Median > 50000