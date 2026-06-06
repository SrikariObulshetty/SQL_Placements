# Write your MySQL query statement below.....
DELETE FROM Person
WHERE id IN (
    SELECT id FROM
    (
        SELECT id , ROW_NUMBER() OVER (
            partition by email
            ORDER BY id
        ) AS rn
        FROM Person
    ) AS t
    WHERE rn > 1
) 
