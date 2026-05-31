--------------------------------------------- Recursive CTE ---------------------------------------------------------------------------------------------------------------
-- Q) Display employee hierarchy from CEO to employees. (Use - Recursive CTE)
WITH RECURSIVE employee_hierarchy AS
(
    SELECT Emp_ID,Emp_Name,Designation,Manager_ID,1 AS Level
    FROM Employees_Table
    WHERE Manager_ID IS NULL

    UNION ALL

    SELECT e.Emp_ID,e.Emp_Name,e.Designation,e.Manager_ID,eh.Level + 1
    FROM Employees_Table e
    INNER JOIN employee_hierarchy eh
    ON e.Manager_ID = eh.Emp_ID
)
SELECT * FROM employee_hierarchy;