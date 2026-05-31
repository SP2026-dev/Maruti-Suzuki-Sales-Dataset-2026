--------------------------------------------- DQL---------------------------------------------------------------------------------------------------------------
-- Q) Find total number of cars sold using COUNT(). (Use - COUNT() Aggregate Function)
SELECT COUNT(*) AS TotalCarsSold
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find average ExShowroomPrice. (Use - AVG() Aggregate Function)
SELECT ROUND(AVG(ExShowroomPrice),2) AS AveragePrice
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find highest OnRoadPrice. (Use - MAX() Aggregate Function)
SELECT MAX(OnRoadPrice) AS HighestPrice
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find lowest DiscountApplied. (Use - MIN() Aggregate Function)
SELECT MIN(DiscountApplied) AS LowestDiscount
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find total UnitsSold in the dataset using SUM(). (Use - SUM() Aggregate Function)
SELECT SUM(UnitsSold) AS TotalUnitsSold
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Show all cars where FuelType = 'Petrol'. (Use - WHERE() Aggregate Function)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE FuelType = 'Petrol';

-- Q) Show all records sorted by SatisfactionScore in descending order. (Use - ORDER BY() DESC Aggregate Function)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
ORDER BY SatisfactionScore DESC;

-- Q) Display all cars sorted by ExShowroomPrice in ascending order. (Use - ORDER BY() ASC Aggregate Function)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
ORDER BY ExShowroomPrice ASC;

-- Q) Show total UnitsSold by each States (Use - GROUP BY + SUM()  Aggregate Function)
SELECT States, SUM(UnitsSold) AS TotalUnits
FROM Maruti_Suzuki_Sales_Dataset
GROUP BY States;

-- Q) Find segments whose average SatisfactionScore is greater than 65. (Use - HAVING Clause)
SELECT Segment, ROUND(AVG(SatisfactionScore),2) AS AvgScore
FROM Maruti_Suzuki_Sales_Dataset
GROUP BY Segment
HAVING AVG(SatisfactionScore) > 65;

-- Q) Display distinct States available in dataset. (Use - DISTINCT Clause)
SELECT DISTINCT States
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Show first 5 records from the table. (Use - LIMIT Clause)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
LIMIT 5;

-- Q) Skip first 5 rows and display next 10 rows. (Use - OFFSET Clause)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
LIMIT 10 OFFSET 5;

-- Q) Show cars where ExShowroomPrice is between 500000 and 1000000. (Use - BETWEEN Clause)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE ExShowroomPrice BETWEEN 500000 AND 1000000;

-- Q) Find all models starting with letter 'S'. (Use - LIKE Clause S%)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE Model LIKE 'S%';

-- Q) Display dealer names containing word 'Motors'. (Use - LIKE Clause %Motors%)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE Dealer_Name LIKE '%Motors%';

-- Q) Show states ending with 'a'. (Use - LIKE Clause %a)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE States LIKE '%a';

-- Q) Show cars sold in states Gujarat, Maharashtra, and Karnataka. (Use - IN Clause)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE States IN ('Gujarat', 'Maharashtra', 'Karnataka');