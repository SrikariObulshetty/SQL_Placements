# Write your MySQL query statement below.....
SELECT MAX(a.num) as num
FROM (SELECT *
     FROM MyNumbers
     GROUP BY num
     HAVING COUNT(*)=1
  ) AS a;

