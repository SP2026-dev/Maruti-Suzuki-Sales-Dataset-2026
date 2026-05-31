--------------------------------------------- UNION and UNION ALL ---------------------------------------------------------------------------------------------------------------
-- Q) Show all customer names and dealer names together without duplicates. (Use - UNION)
SELECT Customer_Name AS Names
FROM Consumer_Table

UNION

SELECT Dealer_Name
FROM Dealer_Table;

-- Q) Show all customer names and dealer names including duplicates. (Use - UNION ALL)
SELECT Customer_Name AS Names
FROM Consumer_Table

UNION ALL

SELECT Dealer_Name
FROM Dealer_Table;