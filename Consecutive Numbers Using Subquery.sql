# Write your MySQL query statement below.....
# Idea is to write subqueries inside WHERE 
SELECT DISTINCT num AS ConsecutiveNums
FROM Logs as l1
WHERE l1.num = (
    SELECT l2.num 
    FROM Logs AS l2
    WHERE l2.id = l1.id + 1
   )    AND 
   l1.num = (
    SELECT l3.num
    FROM Logs AS l3
    WHERE l3.id = l1.id + 2 
   ) 



