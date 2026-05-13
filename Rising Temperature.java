# Write your MySQL query statement below...
SELECT id
FROM Weather as a 
WHERE a.temperature > (
    SELECT b.temperature
    FROM Weather as b
    WHERE b.recordDate = DATE_SUB(a.recordDate, INTERVAL 1 DAY)
);
