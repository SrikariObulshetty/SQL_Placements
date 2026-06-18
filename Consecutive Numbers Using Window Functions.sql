# Write your MySQL query statement below
SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT
    LAG(num) OVER (ORDER BY id) AS prev_row,
    num,
    LEAD(num) OVER (ORDER BY id) AS next_row
    FROM Logs
)  AS temp
WHERE prev_row=num AND num = next_row;

