# Write your MySQL query statement below.....
SELECT u.name, SUM(t.amount) AS balance
FROM Transactions as t
JOIN Users AS u
ON u.account = t.account
GROUP BY t.account
HAVING balance > 10000;

