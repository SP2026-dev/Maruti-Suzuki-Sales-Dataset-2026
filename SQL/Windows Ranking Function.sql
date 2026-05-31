--------------------------------------------- Windows Ranking Function ---------------------------------------------------------------------------------------------------------------
-- Q) Assign row numbers to all cars based on highest OnRoadPrice. (Use - ROW_NUMBER() Function)
SELECT Model,OnRoadPrice,
ROW_NUMBER() OVER(ORDER BY OnRoadPrice DESC) AS RowNum
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Rank cars based on highest OnRoadPrice. (Use - RANK() Function)
SELECT Model,OnRoadPrice,
RANK() OVER(ORDER BY OnRoadPrice DESC) AS PriceRank
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Assign dense rank to cars based on price. (Use - DENSE_RANK() Function)
SELECT Model,OnRoadPrice,
DENSE_RANK() OVER(ORDER BY OnRoadPrice DESC) AS DensePriceRank
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find percentage ranking of cars based on OnRoadPrice. (Use - PERCENT_RANK() Function)
SELECT Model,OnRoadPrice,
PERCENT_RANK() OVER(ORDER BY OnRoadPrice) AS PercentRankPrice
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Divide cars into 4 price groups. (Use - NTILE() Function)
SELECT Model,OnRoadPrice,
NTILE(4) OVER(ORDER BY OnRoadPrice DESC) AS PriceQuartile
FROM Maruti_Suzuki_Sales_Dataset;