-- Create a table that will hold the following information
CREATE TABLE Students (
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    FavouriteCourse VARCHAR(50)
);

-- We want to add a new column to the table which will hold a code that shows their graduation date
ALTER TABLE Students
ADD GraduationCode VARCHAR(4);

-- Insert the information into the table
INSERT INTO Students (FirstName, LastName, FavouriteCourse) VALUES ('Mark', 'Hamil', 'MAD 102');
INSERT INTO Students (FirstName, LastName, FavouriteCourse) VALUES ('Kevin', 'Conroy', 'MAD 103');
INSERT INTO Students (FirstName, LastName, FavouriteCourse) VALUES ('Mark', 'Conroy', 'MAD 103');

-- Mark Conroy has decided that his favourite course is Java - enter MAD 101 as the favourite course
UPDATE Students
SET FavouriteCourse = 'MAD 101'
WHERE FirstName = 'Mark' AND LastName = 'Conroy';

-- Mark Conroy has decided to withdraw from the program - please remove him from the table
DELETE FROM Students
WHERE FirstName = 'Mark' AND LastName = 'Conroy';

-- Remove all remaining records from the table - but keep the table itself
DELETE FROM Students;

-- Remove the table
DROP TABLE Students;

-- Using the products table answer the following questions:
-- Show me all the products where the code ends with a 9
SELECT * FROM Products
WHERE Code LIKE '%9';

-- Show me all the products that start with S12
SELECT * FROM Products
WHERE Code LIKE 'S12%';

-- Show me all the Vintage cars
SELECT * FROM Products
WHERE Category = 'Vintage Cars';

-- Show me all the products where the scale is 1:10
SELECT * FROM Products
WHERE Scale = '1:10';

-- Show me all the products where the vendor has 66 in the name
SELECT * FROM Products
WHERE Vendor LIKE '%66%';

-- Show me all the products that are related to Harley Davidson
SELECT * FROM Products
WHERE Description LIKE '%Harley Davidson%';

-- Show me all the motorcycles
SELECT * FROM Products
WHERE Category = 'Motorcycles';

-- Show me all the products where we have between 1000 and 2000 in stock
SELECT * FROM Products
WHERE Stock BETWEEN 1000 AND 2000;

-- Show me all the products I can buy with the $75 I have
SELECT * FROM Products
WHERE Price <= 75;

-- Show me all the products that cost more than I can afford - I only have $100
SELECT * FROM Products
WHERE Price > 100;

-- Show me the vintage cars from the vendor Motor City Art Classics
SELECT * FROM Products
WHERE Category = 'Vintage Cars' AND Vendor = 'Motor City Art Classics';

-- Show me all the trucks and buses, planes and motorcycles. Place them in alphabetical order by vendor name
SELECT * FROM Products
WHERE Category IN ('Trucks and Buses', 'Planes', 'Motorcycles')
ORDER BY Vendor;

-- Show me all the products in order of MSRP
SELECT * FROM Products
ORDER BY MSRP;

-- Show me all our vendors - do not repeat them
SELECT DISTINCT Vendor FROM Products;

-- Show all the products that have opening hoods (Hint - take a peek at the product descriptions)
SELECT * FROM Products
WHERE Description LIKE '%opening hoods%';