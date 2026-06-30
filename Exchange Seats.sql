# Write your MySQL query statement below.....
SELECT s1.id, 
CASE 
    WHEN s1.id = (SELECT MAX(id) FROM Seat AS s3) AND s1.id%2!=0 THEN s1.student
    WHEN s1.id%2!=0 THEN (SELECT s2.student FROM Seat AS s2 WHERE s2.id = s1.id + 1)
    ELSE (SELECT s2.student FROM Seat AS s2 WHERE s2.id = s1.id - 1)
END 
AS student 
FROM Seat AS s1; 
