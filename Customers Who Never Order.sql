# Write your MySQL query statement below.....
Select a.name as Customers
FROM Customers as a 
LEFT JOIN Orders as b
ON a.id = b.customerId
WHERE b.customerId IS NULL;
