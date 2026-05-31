CREATE TABLE Employees_Table
(
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Designation VARCHAR(50),
    Manager_ID INT,
    Dealer_Name VARCHAR(50),
    Salary INT
);

INSERT INTO Employees_Table(Emp_ID, Emp_Name, Designation, Manager_ID, Dealer_Name, Salary) VALUES
(1, 'Rahul Sharma', 'CEO', NULL, 'Head Office', 250000),
(2, 'Aman Verma', 'Regional Manager', 1, 'Sai Motors', 180000),
(3, 'Priya Mehta', 'Regional Manager', 1, 'Nexa Auto', 180000),
(4, 'Sneha Patil', 'Sales Manager', 2, 'Sai Motors', 120000),
(5, 'Karan Singh', 'Sales Manager', 3, 'Nexa Auto', 120000),
(6, 'Neha Joshi', 'Team Lead', 4, 'Sai Motors', 80000),
(7, 'Arjun Nair', 'Team Lead', 5, 'Nexa Auto', 80000),
(8, 'Rohit Das', 'Sales Executive', 6, 'Sai Motors', 45000),
(9, 'Pooja Shah', 'Sales Executive', 6, 'Sai Motors', 45000),
(10, 'Vikas Jain', 'Sales Executive', 7, 'Nexa Auto', 45000);

SELECT * FROM Employees_Table;