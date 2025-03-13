-- What is the average reorder level?
SELECT AVG(ReorderLevel) AS AvgReorderLevel
FROM products;

-- How many discontinued products do we sell
SELECT COUNT(productID) AS discontinuedCount
FROM products
WHERE discontinued = 1;

-- How many suppliers do we have in each country - order from most to least?
SELECT COUNT(supplierID) AS NumSuppliers, country
FROM suppliers
GROUP BY country
ORDER BY NumSuppliers DESC;

-- What product category do have the most units in stock?
SELECT categoryName
FROM categories
WHERE categoryID IN (
SELECT categoryID 
FROM products
WHERE unitsInStock = (
SELECT MAX(unitsInStock)
FROM products)
  );

-- What products come from Germany?
SELECT productName
FROM products
WHERE supplierID IN 
(SELECT supplierID
FROM suppliers
WHERE country = 'Germany');

-- What is the full name of the employee and their birthday, that packed the order #10257
SELECT CONCAT(firstName, ' ', lastName) AS empName, birthdate
FROM employees
WHERE employeeID IN
(SELECT employeeID
FROM orders
WHERE orderID = 10257);


-- What are the categories of products that people in Sweden buy - show only unique product names
SELECT categoryName
FROM categories
WHERE categoryID IN (

SELECT categoryID
FROM products
WHERE productID IN(

SELECT productID
FROM order_details
WHERE orderID IN (

SELECT orderID
FROM orders
WHERE customerID IN

(SELECT customerID
FROM customers
WHERE country = 'Sweden'))))

-- Show me the suppliers, their products and the product category and group the results by company name
SELECT productName, categoryName, companyNAme
FROM products INNER JOIN suppliers 
ON products.supplierID = suppliers.supplierID
INNER JOIN categories
ON products.categoryID = categories.categoryID
ORDER BY companyName;

-- show me the products that each company ordered,
-- and what company shipped them - 
-- show the results in alphabetical order by company name

SELECT c.companyName, s.companyName, p.productName
FROM customers AS c INNER JOIN orders AS o
ON c.customerID = o.customerID
INNER JOIN shippers AS s
ON o.shipVia = s.shipperID
INNER JOIN order_details AS od
ON o.orderID = od.orderId
INNER JOIN products AS p
ON p.productID = od.productID
ORDER BY c.companyName;

