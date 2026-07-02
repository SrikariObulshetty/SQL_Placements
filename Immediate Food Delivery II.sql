# Write your MySQL query statement below.....
SELECT ROUND( COUNT(*) / (SELECT COUNT(DISTINCT customer_id) FROM Delivery) * 100, 2)  AS immediate_percentage
FROM Delivery 
WHERE order_date = customer_pref_delivery_date AND order_date IN (SELECT MIN(d1.order_date)
                                                                   FROM Delivery AS d1
                                                                   WHERE d1.customer_id = Delivery.customer_id
                                                                   GROUP BY d1.customer_id
                                                                   )  



