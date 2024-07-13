-- (1) Retrieve all of your customers' names, account numbers, and addresses (street and zip code only), sorted by account number.
SELECT 
    Name AS CustomerName,
    CustomerID AS AccountNumber,
    Address AS StreetAndZip
FROM 
    Customer
ORDER BY 
    CustomerID;

-- (2) Retrieve all of the videos rented in the last 30 days and sort in chronological rental date order.
SELECT 
    InventoryID,
    RentalDate
FROM 
    RentalTransaction
WHERE 
    RentalDate BETWEEN CURRENT_DATE - INTERVAL '30' DAY AND CURRENT_DATE
ORDER BY 
    RentalDate ASC;

-- (3) Produce a list of your distributors and all their information sorted in order by company name.
SELECT *
FROM Distributor
ORDER BY Name ASC;

-- (4) Update a customer name to change their maiden name to a married name.

-- Name before change
SELECT * FROM Customer WHERE CustomerID = 2;

-- Change name
UPDATE Customer
SET Name = 'Jane Doe'
WHERE CustomerID = 2;

-- Name after change
SELECT * FROM Customer WHERE CustomerID = 2;

-- (5) Delete a customer from the database.
DELETE FROM RentalTransaction
WHERE CustomerID = 5;

DELETE FROM Customer 
WHERE CustomerID = 5;

