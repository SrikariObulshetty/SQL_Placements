# Write your MySQL query statement below.....
# Full join
SELECT t.employee_id
FROM (
     SELECT e1.employee_id
     FROM Employees as e1
     LEFT JOIN Salaries as s1 
     ON e1.employee_id = s1.employee_id
     WHERE s1.salary IS NULL
     UNION
     SELECT s2.employee_id
     FROM Employees AS e2
     RIGHT JOIN Salaries AS s2
     ON e2.employee_id = s2.employee_id 
     WHERE e2.name IS NULL
) AS t 
ORDER BY t.employee_id; 




