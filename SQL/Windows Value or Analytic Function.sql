--------------------------------------------- Windows Value / Analytic Function ---------------------------------------------------------------------------------------------------------------
-- Q) Show previous car price beside current car price. (Use - LAG() Function)
SELECT Model,OnRoadPrice,
LAG(OnRoadPrice) OVER(ORDER BY OnRoadPrice) AS PreviousPrice
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Show next car price beside current car. (Use - LEAD() Function)
SELECT Model,OnRoadPrice,
LEAD(OnRoadPrice) OVER(ORDER BY OnRoadPrice) AS NextPrice
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find cheapest car in each segment. (Use - FIRST_VALUE() Function)
SELECT Model,Segment,OnRoadPrice,
FIRST_VALUE(Model) OVER(PARTITION BY Segment ORDER BY OnRoadPrice) AS CheapestCar
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Find most expensive car in each segment.  (Use - LAST_VALUE() Function)
SELECT Model,Segment,OnRoadPrice,
LAST_VALUE(Model) OVER(PARTITION BY Segment ORDER BY OnRoadPrice ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS MostExpensiveCar
FROM Maruti_Suzuki_Sales_Dataset;