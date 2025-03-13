-- 1. What is the average amount for units of our products on order?
SELECT AVG(UnitPrice * Quantity) AS AverageAmount
FROM order_details;

-- 2. Show me an alphabetically list of the companies that provide us with the products the unit measure is a pkg. Do not use join.
SELECT DISTINCT CompanyName
FROM suppliers
WHERE SupplierID IN (
    SELECT SupplierID
    FROM products
    WHERE QuantityPerUnit LIKE '%pkg%'
)
ORDER BY CompanyName;

-- 3. Show me the supplier's contact name, their title, the product name and category for any product that has units on order.
SELECT 
    s.ContactName, 
    s.ContactTitle, 
    p.ProductName, 
    c.CategoryName
FROM 
    Products p
INNER JOIN 
    Suppliers s ON p.SupplierID = s.SupplierID
INNER JOIN 
    Categories c ON p.CategoryID = c.CategoryID
WHERE 
    p.UnitsOnOrder > 0;

-- 4.Show me the product(s) and the units in stock, that we have the least of in stock. Show the results in reverse alphabetical order.
SELECT ProductName, UnitsInStock
FROM Products
WHERE UnitsInStock = (
    SELECT MIN(UnitsInStock)
    FROM Products
)
ORDER BY ProductName DESC;

-- 5. How many orders have federal Shipping sent?
SELECT COUNT(*) AS NumberOFOrders
FROM orders
WHERE ShipVia = (
    SELECT ShipperID
    FROM shippers
    WHERE ShipperName = 'Federal Shipping'
);

-- 6. Show me the customer name, the employee's full name(first and last as single value) who packed their order, the company that shipped their order, for #10263
SELECT 
    c.CompanyName AS CustomerName, 
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeFullName, 
    s.CompanyName AS ShippingCompany
FROM 
    orders o
INNER JOIN 
    customers c ON o.OrderID = c.CustomerID
INNER JOIN 
    employees e ON o.EmployeeID = e.EmployeeID
INNER JOIN 
    shippers s ON o.ShipVia = s.ShipperID
WHERE
    o.OrderID = 10263;

-- 7. What is the total number of units in stock for imters where the quantity per unit come in box?
SELECT SUM(UnitsInStock) AS TotalUnitsInStock
FROM Products
WHERE QuantityPerUnit LIKE '%box%';

-- 8. What is the most expensive unit price we have?
SELECT MAX(UnitPrice) AS MostExpensiveUnitPrice
FROM Products;

-- 9. How many orders do we have for each country?
SELECT customers.Country, COUNT(*) AS NumberOfOrders
FROM orders
INNER JOIN customers ON orders.CustomerID = customers.CustomerID
GROUP BY customers.Country;

-- 10. What was the latest date on order was required?
SELECT MAX(RequiredDate) AS LatestRequiredDate
FROM orders;