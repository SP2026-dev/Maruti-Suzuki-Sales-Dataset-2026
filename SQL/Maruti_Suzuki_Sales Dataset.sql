CREATE TABLE Maruti_Suzuki_Sales_Dataset(
SaleDate DATE,
InvoiceID VARCHAR(50),
ProductID  VARCHAR(50),
FuelType VARCHAR(20),
Transmission VARCHAR(20),
Color VARCHAR(10),
DealerCode  VARCHAR(5),
Channel VARCHAR(10),
UnitsSold INT,
ExShowroomPrice INT,
DiscountApplied INT,
OnRoadPrice NUMERIC(12,7),
PaymentMode VARCHAR(10),
FinancePartner VARCHAR(20),
CustomerType VARCHAR(20),
SatisfactionScore INT,
BookingToDeliveryDays INT,
Year_Column SMALLINT,
Month_Column VARCHAR(10),
Quarter_Column VARCHAR(5),
Profit_Approximation NUMERIC(12,7),
Model VARCHAR(15),
Segment VARCHAR(10),
Dealer_Name VARCHAR(50),
States VARCHAR(20));

COPY Maruti_Suzuki_Sales_Dataset(SaleDate, InvoiceID, ProductID, FuelType, Transmission, Color, DealerCode, Channel, UnitsSold, 
ExShowroomPrice, DiscountApplied, OnRoadPrice, PaymentMode, FinancePartner, CustomerType, SatisfactionScore, BookingToDeliveryDays, 
Year_Column, Month_Column, Quarter_Column, Profit_Approximation, Model, Segment, Dealer_Name, States)
FROM 'C:/Users/pandi/OneDrive/Desktop/Final Github Project Upload/Project 01 -  Maruti Suzuki Sales Dataset/Dashboard/Maruti_Suzuki_Sales Dataset - Excel Dashboard.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM Maruti_Suzuki_Sales_Dataset;