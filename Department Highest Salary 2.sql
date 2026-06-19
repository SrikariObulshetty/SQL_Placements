# Write your MySQL query statement below.....
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee AS e 
JOIN Department AS d
ON e.departmentId = d.id
WHERE (e.departmentId,e.salary) IN (
    SELECT e2.departmentID,MAX(e2.salary)
    FROM Employee AS e2
    GROUP BY e2.departmentId
);
