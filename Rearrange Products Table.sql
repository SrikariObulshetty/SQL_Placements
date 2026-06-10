# Write your MySQL query statement below.....
#Reverse pivoting
SELECT p1.product_id, 'store1' AS store ,(SELECT p2.store1 FROM Products AS p2 WHERE p1.product_id = p2.product_id) AS price FROM Products AS p1 WHERE p1.store1 IS NOT NULL 
UNION 
SELECT p3.product_id, 'store2' AS store , (SELECT p4.store2 FROM Products AS p4 WHERE  p3.product_id = p4.product_id ) AS price FROM Products AS p3 WHERE p3.store2 IS NOT NULL
UNION
SELECT p5.product_id, 'store3' AS store , (SELECT p6.store3 FROM Products AS p6 WHERE p5.product_id = p6.product_id) AS price FROM Products AS  p5 WHERE p5.store3  IS NOT NULL 
ORDER BY  product_id;  


