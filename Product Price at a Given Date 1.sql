# Write your MySQL query statement below
SELECT p1.product_id , 10 AS price
FROM Products AS p1
WHERE p1.product_id IN (SELECT product_id FROM Products GROUP BY product_id HAVING MIN(change_date) > '2019-08-16')

UNION 

SELECT p1.product_id, p1.new_price AS price 
FROM Products AS p1
WHERE (p1.product_id,p1.change_date) IN (
    SELECT product_id,MAX(change_date)
    FROM Products 
    WHERE change_date<='2019-08-16' 
    GROUP BY product_id 
);
