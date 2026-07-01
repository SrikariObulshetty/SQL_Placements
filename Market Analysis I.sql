# Write your MySQL query statement below.....
SELECT user_id AS buyer_id, join_date, 
CASE 
    WHEN buyer_id IS NULL THEN 0
    ELSE COUNT(buyer_id)
END
AS orders_in_2019 
FROM Users 
LEFT JOIN Orders
ON Users.user_id = Orders.buyer_id AND YEAR(order_date) = 2019
GROUP BY user_id ; #need one row per user , so group by user_id not buyer_id.





