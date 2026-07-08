# Write your MySQL query statement below.....
SELECT visited_on,
      SUM(amount) OVER (ORDER BY visited_on ROWS 6 PRECEDING) amount, 
      ROUND( AVG(amount) OVER (ORDER BY visited_on ROWS 6 PRECEDING), 2 ) average_amount
FROM (
    SELECT visited_on, SUM(amount) AS amount 
    FROM Customer
    GROUP BY visited_on
) AS t
LIMIT 1000000 OFFSET 6;  

