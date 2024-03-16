-- Select employee_id and department_id from the Employee table
SELECT employee_id, department_id

-- From the Employee table
FROM Employee

-- Where primary_flag is 'Y' 
-- OR employee_id is in a subquery result
WHERE primary_flag = 'Y' 

-- OR the employee belongs to only one department
OR employee_id IN (
    -- Subquery to select employee_id 
    SELECT employee_id 
    
    -- From the Employee table
    FROM Employee 
    
    -- Group the results by employee_id
    GROUP BY employee_id
    
    -- Filter groups to only include those with a count of department_id equal to 1
    HAVING COUNT(department_id) = 1
);
