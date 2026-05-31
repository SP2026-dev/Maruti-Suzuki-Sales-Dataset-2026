--------------------------------------------- Windows Aggregate Function ---------------------------------------------------------------------------------------------------------------
-- Q) Show total UnitsSold for each state without collapsing rows. (Use - WINDOWS Function + SUM())
SELECT States,UnitsSold,
SUM(UnitsSold) OVER(PARTITION BY States) AS TotalStateSales
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Show average OnRoadPrice within each segment. (Use - WINDOWS Function + AVG())
SELECT Model,Segment,OnRoadPrice,
ROUND(AVG(OnRoadPrice) OVER(PARTITION BY Segment),2) AS AvgSegmentPrice
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Count number of cars in each segment. (Use - WINDOWS Function + COUNT())
SELECT Model,Segment,
COUNT(*) OVER(PARTITION BY Segment) AS SegmentCount
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find minimum OnRoadPrice within each segment. (Use - WINDOWS Function + MIN())
SELECT Model,Segment,OnRoadPrice,
MIN(OnRoadPrice)
OVER(PARTITION BY Segment) AS MinimumSegmentPrice
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find highest OnRoadPrice in each fuel type. (Use - WINDOWS Function + MAX())
SELECT Model, FuelType,OnRoadPrice,
MAX(OnRoadPrice) OVER(PARTITION BY FuelType) AS HighestFuelPrice
FROM Maruti_Suzuki_Sales_Dataset;