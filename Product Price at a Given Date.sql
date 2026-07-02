# Write your MySQL query statement below

WITH cte AS (
    SELECT p1.product_id, p1.new_price,p1.change_date, 
    LEAD(p1.change_date) OVER (PARTITION BY p1.product_id 
                               ORDER BY p1.change_date) AS next_change_date
    FROM Products AS p1
)

SELECT DISTINCT p1.product_id, COALESCE(c1.new_price  , 10) AS price  #can use IFNULL also
FROM (SELECT DISTINCT product_id FROM Products) AS p1
LEFT JOIN cte AS c1 
ON p1.product_id = c1.product_id 
AND '2019-08-16' >=  c1.change_date AND ('2019-08-16' < c1.next_change_date OR c1.next_change_date IS NULL)
; 
      
