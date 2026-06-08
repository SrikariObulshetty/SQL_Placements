# Write your MySQL query statement below.....
WITH temp AS (
    SELECT a1.machine_id,a1.process_id,a1.timestamp AS start,a2.timestamp AS end
    FROM Activity AS a1
    INNER JOIN Activity AS a2
    ON a1.machine_id = a2.machine_id
    WHERE a1.process_id = a2.process_id
    AND a1.activity_type = 'start' 
    AND a2.activity_type = 'end' 
)
SELECT temp.machine_id, ROUND( SUM(temp.end - temp.start) / COUNT(DISTINCT temp.process_id), 3) AS processing_time
FROM temp
GROUP BY temp.machine_id; 

