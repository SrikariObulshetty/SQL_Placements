# Write your MySQL query statement below.....
SELECT cj.student_id, cj.student_name,cj.subject_name,COUNT(e.student_id) AS attended_exams 
FROM (
    SELECT *
    FROM Students
    CROSS JOIN Subjects
) AS cj 
LEFT JOIN Examinations AS e 
ON cj.student_id = e.student_id AND cj.subject_name = e.subject_name
GROUP BY cj.student_id,cj.subject_name 
ORDER BY cj.student_id,cj.subject_name; 





-- SELECT 
--     s.student_id, 
--     s.student_name, 
--     v.subject_name, 
--     COUNT(e.student_id) AS attended_exams
-- FROM Students s
-- CROSS JOIN Subjects v
-- LEFT JOIN Examinations e 
--     ON s.student_id = e.student_id 
--     AND v.subject_name = e.subject_name
-- GROUP BY s.student_id, s.student_name, v.subject_name 
-- ORDER BY s.student_id, v.subject_name;
