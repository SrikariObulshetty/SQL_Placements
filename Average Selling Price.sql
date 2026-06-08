# Write your MySQL query statement below.....
SELECT p.product_id,  
CASE 
     WHEN SUM(u.units) IS NOT NULL THEN ROUND( SUM(u.units * p.price) / SUM(u.units), 2)
     ELSE 0 
END AS average_price  
FROM Prices as p
LEFT JOIN UnitsSold AS u 
ON p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date AND p.end_date 
GROUP BY p.product_id; 
 

