# Write your MySQL query statement below
WITH temp AS (
    SELECT *
    FROM Queue
    ORDER BY turn ASC 
)

SELECT q1.person_name 
FROM Queue AS q1
WHERE q1.person_id = (SELECT t1.person_id 
                       FROM Queue AS q2
                       INNER JOIN temp AS t1
                       ON q2.turn <= t1.turn 
                       GROUP BY t1.turn
                       HAVING SUM(q2.weight) <= 1000    
                       ORDER BY t1.turn DESC
                       LIMIT 1 

                       )  
