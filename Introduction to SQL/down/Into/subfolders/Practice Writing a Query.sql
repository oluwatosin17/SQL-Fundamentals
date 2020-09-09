SELECT Major_category,Major,Unemployment_rate
FROM jobs.recent_grads
WHERE (Major_category = "Engineering" OR Major_category = "Physical Sciences")
ORDER BY Unemployment_rate DESC;