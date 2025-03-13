-- 1. Show me all the products that cost more than I can afford - I only have $100
SELECT * FROM Products
WHERE Price > 100;

-- 2. Show me the vintage cars from the vendor Motor City Art Classics
SELECT * FROM Products
WHERE Category = 'Vintage Cars' AND Vendor = 'Motor City Art Classics';

-- 3. Show me all the trucks and buses, planes and motorcycles. Place them in alphabetical order by vendor name
SELECT * FROM Products
WHERE Category IN ('Trucks and Buses', 'Planes', 'Motorcycles')
ORDER BY Vendor;

-- 4. Show me all the products in order of MSRP
SELECT * FROM Products
ORDER BY MSRP;

-- 5. Show me all our vendors - do not repeat them
SELECT DISTINCT Vendor FROM Products;

-- 6. Show all the products that have opening hoods (Hint - take a peek at the product descriptions)
SELECT * FROM Products
WHERE Description LIKE '%opening hoods%';

-- 7. Show me all the products where the code ends with a 9
SELECT * FROM Products
WHERE Code LIKE '%9';

-- 8. Show me all the products that start with S12
SELECT * FROM Products
WHERE Code LIKE 'S12%';

-- 9. Show me all the Vintage cars
SELECT * FROM Products
WHERE Category = 'Vintage Cars';

-- 10. Show me all the products where the scale is 1:10
SELECT * FROM Products
WHERE Scale = '1:10';

-- 11. Show me all the products where the vendor has 66 in the name
SELECT * FROM Products
WHERE Vendor LIKE '%66%';

-- 12. Show me all the products that are related to Harley Davidson
SELECT * FROM Products
WHERE Description LIKE '%Harley Davidson%';

-- 13. Show me all the motorcycles
SELECT * FROM Products
WHERE Category = 'Motorcycles';

-- 14. Show me all the products where we have between 1000 and 2000 in stock
SELECT * FROM Products
WHERE Stock BETWEEN 1000 AND 2000;

-- 15. Show me all the products I can buy with the $75 I have
SELECT * FROM Products
WHERE Price <= 75;