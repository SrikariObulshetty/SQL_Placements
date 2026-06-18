# Write your MySQL query statement below.....
SELECT s1.score, (COUNT(DISTINCT s2.score) + 1) AS `rank`
FROM Scores AS s1
LEFT JOIN Scores AS s2
ON s1.score < s2.score 
GROUP BY s1.id
ORDER BY s1.score DESC; 
