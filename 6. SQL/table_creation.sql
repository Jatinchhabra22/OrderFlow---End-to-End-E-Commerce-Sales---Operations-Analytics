-- creating sql table for performing sql commands 


CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    Status VARCHAR(50),
    Fulfilment VARCHAR(50),
    Category VARCHAR(100),
    Size VARCHAR(20),
    Courier_Status VARCHAR(100),
    Qty INT,
    Currency VARCHAR(10),
    Amount FLOAT,
    Ship_State VARCHAR(100),
    Ship_City VARCHAR(100),
    Year INT,
    Month INT,
    Day INT,
    Sales FLOAT,
    Success INT,
    Size_Group VARCHAR(50),
    Price_Segment VARCHAR(50),
    Zone VARCHAR(50)
);