SELECT Major,Major_category,ShareWomen,Unemployment_rate
FROM jobs.recent_grads
WHERE (Major_category = "Engineering" )
AND(ShareWomen > 0.5 OR Unemployment_rate < 0.051)