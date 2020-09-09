SELECT Major,Median,Unemployed
FROM jobs.recent_grads
WHERE Median >= 10000
OR Men > Women
LIMIT 20;