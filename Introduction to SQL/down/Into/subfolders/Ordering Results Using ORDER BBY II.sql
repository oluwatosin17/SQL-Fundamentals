SELECT Major,ShareWomen,Unemployment_rate
FROM jobs.recent_grads
WHERE(ShareWomen > 0.3)
AND (Unemployment_rate < 0.1)
ORDER BY ShareWomen desc