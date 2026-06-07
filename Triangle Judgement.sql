# Write your MySQL query statement below.....
SELECT x,y,z, 
CASE
   WHEN (x + y) > z AND
        (y + z) > x AND
        (x + z) > y AND
        ABS(x - y) < z AND
        ABS(y - z) < x AND
        ABS(x - z) < y
        THEN "Yes" ELSE 'No' 
    END AS triangle 
FROM Triangle;


