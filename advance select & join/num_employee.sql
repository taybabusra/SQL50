# Write your MySQL query statement below
# classic problem of self join
# left join 
SELECT a2.employee_id,a2.name, COUNT(a1.
employee_id)AS reports_count,ROUND(AVG(a1.age),0) AS average_age
FROM Employees a1
INNER JOIN Employees a2
ON a1.reports_to =a2.employee_id
GROUP BY a2.employee_id, a2.name
ORDER BY a2.employee_id
