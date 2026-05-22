# Write your MySQL query statement below.....
SELECT employee_id, salary * (employee_id%2!=0) * (name NOT REGEXP '^M') AS bonus
FROM Employees
ORDER BY employee_id;
