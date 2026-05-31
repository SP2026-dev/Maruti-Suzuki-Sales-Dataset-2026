--------------------------------------------- JOIN TABLE ---------------------------------------------------------------------------------------------------------------
-- Created Consumer Table :
CREATE TABLE Consumer_Table(
Customer_ID INT PRIMARY KEY,
Customer_Name VARCHAR(15),
States VARCHAR(15),
PaymentMode VARCHAR(15));

INSERT INTO Consumer_Table (Customer_ID,Customer_Name,States,PaymentMode) VALUES
(101,'Rahul Sharma','Maharashtra','UPI'),
(102,'Priya Mehta','Gujarat','Cash'),
(103,'Aman Verma','Karnataka','Card'),
(104,'Sneha Patil','Maharashtra','EMI'),
(105,'Karan Singh','Delhi','Cash'),
(106,'Neha Joshi','Rajasthan','UPI'),
(107,'Arjun Nair','Kerala','Card');

SELECT * FROM Consumer_Table;

-- Created Cars Table :
CREATE TABLE Cars_Table(
Car_ID INT PRIMARY KEY,
Model VARCHAR(15),
Segment VARCHAR(15),
FuelType VARCHAR(15),
ExShowroomPrice INT,
OnRoadPrice INT); 

INSERT INTO Cars_Table (Car_ID,Model,Segment,FuelType,ExShowroomPrice,OnRoadPrice) VALUES
(201,'Swift','Hatchback','Petrol',650000,750000),
(202,'Baleno','Hatchback','Petrol',780000,860000),
(203,'Brezza','SUV','Petrol',1100000,1250000),
(204,'Ertiga','MPV','CNG',1050000,1180000),
(205,'Dzire','Sedan','Petrol',850000,940000),
(206,'Fronx','SUV','Turbo Petrol',1200000,1360000),
(207,'Wagon R','Hatchback','CNG',690000,770000);

SELECT * FROM Cars_Table;

-- Created Sales Table :
CREATE TABLE (
Sale_ID INT PRIMARY KEY,
Customer_ID INT,
Car_ID INT,
Dealer_Name VARCHAR(15),
UnitsSold INT,
DiscountApplied INT,
BookingDate DATE);

INSERT INTO Sales_Table(Sale_ID,Customer_ID,Car_ID,Dealer_Name,UnitsSold,DiscountApplied,BookingDate) VALUES
(301,101,201,'Sai Motors',2,25000,'2025-01-05'),
(302,102,203,'Nexa Auto',1,40000,'2025-01-08'),
(303,103,205,'City Cars',3,30000,'2025-01-12'),
(304,104,202,'Sai Motors',1,20000,'2025-01-15'),
(305,105,206,'Prime Wheels',2,50000,'2025-01-20'),
(306,106,204,'Nexa Auto',1,35000,'2025-01-25'),
(307,107,207,'City Cars',4,15000,'2025-01-28');

SELECT * FROM Sales_Table;

-- Created Dealer Table :
CREATE TABLE Dealer_Table(
Dealer_ID INT PRIMARY KEY,
Dealer_Name VARCHAR(15),
FinancePartner VARCHAR(15),
States VARCHAR(15));

INSERT INTO Dealer_Table(Dealer_ID,Dealer_Name,FinancePartner,States) VALUES
(401,'Sai Motors','HDFC','Maharashtra'),
(402,'Nexa Auto','ICICI','Gujarat'),
(403,'City Cars','SBI','Karnataka'),
(404,'Prime Wheels','Axis Bank','Delhi'),
(405,'Royal Drive','HDFC','Rajasthan'),
(406,'Speed Motors','Kotak','Kerala'),
(407,'Urban Auto','ICICI','Maharashtra');

SELECT * FROM Dealer_Table;
