# 1. What's the lowest medan Salary
# 2. What's the highest Median Salary
# 3. What's the total number of Students

SELECT Major, Major_category
FROM jobs.recent_grads;

SELECT MIN(Median), MAX(Median), SUM(Total)
FROM jobs.recent_grads;

SELECT AVG(Total), MIN(Men), MAX(Women)
FROM jobs.recent_grads