--------------------------------------------- SUBQUERY ---------------------------------------------------------------------------------------------------------------
-- Q) Find all cars whose OnRoadPrice is greater than the average OnRoadPrice. (Use - Single Row Subquery)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE OnRoadPrice >
(
    SELECT AVG(OnRoadPrice)
    FROM Maruti_Suzuki_Sales_Dataset
);

-- Q) Find all cars whose FuelType matches fuel types used in SUV segment. (Use - Multiple Rows Subquery)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE FuelType IN
(
    SELECT FuelType
    FROM Maruti_Suzuki_Sales_Dataset
    WHERE Segment = 'SUV'
);

-- Q) Find cars having higher OnRoadPrice than average price of their own segment. (Use - Correlated Subquery)
SELECT * FROM Maruti_Suzuki_Sales_Dataset m1
WHERE OnRoadPrice >
(
    SELECT AVG(OnRoadPrice)
    FROM Maruti_Suzuki_Sales_Dataset m2
    WHERE m1.Segment = m2.Segment
);

-- Q) Find cars having price greater than average price of SUV segment. (Use - Nested Subquery)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
WHERE OnRoadPrice >
(
    SELECT AVG(OnRoadPrice)
    FROM Maruti_Suzuki_Sales_Dataset
    WHERE Segment =
    (
        SELECT Segment
        FROM Maruti_Suzuki_Sales_Dataset
        WHERE Segment = 'SUV'
        LIMIT 1
    )
);