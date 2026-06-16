# Write your MySQL query statement below.....
SELECT *
FROM Products
WHERE  REGEXP_LIKE(description,  '(^|[[:space:]])SN[0-9]{4}-[0-9]{4}( |$)' , 'c') 
ORDER BY product_id;  
