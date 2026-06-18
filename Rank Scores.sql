# Write your MySQL query statement below.....
SELECT s1.score,( (SELECT COUNT(DISTINCT score)
               FROM Scores AS s2
               WHERE s1.score < s2.score ) + 1 ) AS `rank`  
FROM Scores AS s1
ORDER BY s1.score DESC;  
