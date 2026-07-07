# Write your MySQL query statement below.....
SELECT person_name
FROM (
    SELECT person_name, SUM(weight) OVER (ORDER BY turn ASC) AS weight_sum
    FROM Queue
) AS a
WHERE a.weight_sum <= 1000
ORDER BY a.weight_sum DESC
LIMIT 1; 
