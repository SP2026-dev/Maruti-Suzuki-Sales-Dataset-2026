--------------------------------------------- CASE ---------------------------------------------------------------------------------------------------------------
-- Q) Classify cars as Budget, Mid Range, and Premium based on OnRoadPrice. (Use -  Simple CASE)
SELECT Model,OnRoadPrice,
CASE
    WHEN OnRoadPrice < 700000 THEN 'Budget'
    WHEN OnRoadPrice BETWEEN 700000 AND 1200000 THEN 'Mid Range'
    ELSE 'Premium'
END AS CarCategory
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Count how many Petrol and Diesel cars are sold. (Use - CASE + Aggregate Function SUM())
SELECT
SUM(
    CASE
        WHEN FuelType = 'Petrol' THEN 1
        ELSE 0
    END
) AS PetrolCars,
SUM(
    CASE
        WHEN FuelType = 'Diesel' THEN 1
        ELSE 0
    END
) AS DieselCars
FROM Maruti_Suzuki_Sales_Dataset;

-- Q) Display cars by priority: i) SUV, ii) Sedan, iii) Hatchback (Use - CASE + ORDER BY)
SELECT * FROM Maruti_Suzuki_Sales_Dataset
ORDER BY
CASE
    WHEN Segment = 'SUV' THEN 1
    WHEN Segment = 'Sedan' THEN 2
    ELSE 3
END;

-- Q) Group customers into price categories and count total cars. (Use CASE + GROUP BY)
SELECT
CASE
    WHEN OnRoadPrice < 700000 THEN 'Budget'
    WHEN OnRoadPrice BETWEEN 700000 AND 1200000 THEN 'Mid Range'
    ELSE 'Premium'
END AS PriceCategory,
COUNT(*) AS TotalCars
FROM Maruti_Suzuki_Sales_Dataset
GROUP BY
CASE
    WHEN OnRoadPrice < 700000 THEN 'Budget'
    WHEN OnRoadPrice BETWEEN 700000 AND 1200000 THEN 'Mid Range'
    ELSE 'Premium'
END;