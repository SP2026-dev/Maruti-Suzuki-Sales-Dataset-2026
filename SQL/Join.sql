--------------------------------------------- JOIN ---------------------------------------------------------------------------------------------------------------
-- Q) Show dealer names with total units sold. (Use - INNER JOIN)
SELECT s.Dealer_Name,SUM(s.UnitsSold) AS TotalSales
FROM Sales_Table s
INNER JOIN Dealer_Table d
ON s.Dealer_Name = d.Dealer_Name
GROUP BY s.Dealer_Name;

-- Q) Find customers who did not purchase any car. (Use - LEFT JOIN)
SELECT c.Customer_Name
FROM Consumer_Table c
LEFT JOIN Sales_Table s
ON c.Customer_ID = s.Customer_ID
WHERE s.Customer_ID IS NULL;

-- Q) Show all sales records with customer names. (Use - RIGHT JOIN)
SELECT c.Customer_Name,s.Sale_ID,s.UnitsSold
FROM Consumer_Table c
RIGHT JOIN Sales_Table s
ON c.Customer_ID = s.Customer_ID;

-- Q) Show all customers and all sales records. (Use - FULL JOIN)
SELECT c.Customer_Name,s.Sale_ID
FROM Consumer_Table c
FULL JOIN Sales_Table s
ON c.Customer_ID = s.Customer_ID;

-- Q) Generate all possible combinations of customers and cars. (Use - CROSS JOIN)
SELECT c.Customer_Name,ca.Model
FROM Consumer_Table c
CROSS JOIN Cars_Table ca;

-- Q) Find customers belonging to same state. (Use - SELF JOIN)
SELECT a.Customer_Name AS Customer1,b.Customer_Name AS Customer2,a.States
FROM Consumer_Table a
JOIN Consumer_Table b
ON a.States = b.States
AND a.Customer_ID <> b.Customer_ID;