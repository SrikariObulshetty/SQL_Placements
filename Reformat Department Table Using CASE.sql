# Write your MySQL query statement below.....
SELECT id,  
    MAX(CASE WHEN month ='Jan'THEN revenue ELSE null END) AS Jan_revenue,
    MAX(CASE WHEN month='Feb' THEN revenue ELSE null END) AS Feb_revenue,
    MAX(CASE WHEN month='Mar' THEN revenue ELSE null END) AS Mar_revenue,
    MAX(CASE WHEN month='Apr' THEN revenue ELSE null END) AS Apr_revenue,
    MAX(CASE WHEN month='May' THEN revenue ELSE null END) AS May_revenue,
    MAX(CASE WHEN month='Jun' THEN revenue ELSE null END) AS Jun_revenue,
    MAX(CASE WHEN month='Jul' THEN revenue ELSE null END) AS Jul_revenue,
    MAX(CASE WHEN month='Aug' THEN revenue ELSE null END) AS Aug_revenue,
    MAX(CASE WHEN month='Sep' THEN revenue ELSE null END) AS Sep_revenue,
    MAX(CASE WHEN month='Oct' THEN revenue ELSE null END) AS Oct_revenue,
    MAX(CASE WHEN month='Nov' THEN revenue ELSE null END) AS Nov_revenue,
    MAX(CASE WHEN month='Dec' THEN revenue ELSE null END) AS Dec_revenue 
FROM Department
GROUP BY id;  



