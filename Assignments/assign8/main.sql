-- 1. How many books do we sell that are not children's books
SELECT COUNT(*) FROM titles WHERE type != 'children';

-- 2. How many total pages do all the books have
SELECT SUM(pages) FROM titles;

-- 3. How many books do we publish that cost 12.99 or less
SELECT COUNT(*) FROM titles WHERE price <= 12.99;

-- 4. What was the total amount of money we made on psychology books. The total for each book can be determined by multiplying the sales * the price of the book
SELECT SUM(sales * price) AS total_revenue FROM titles WHERE type = 'psychology';

-- 5. What is the average number of pages in our books?
SELECT AVG(pages) AS average_pages FROM titles;

-- 6. What was the lowest sales figure for children's or psychology books - do not use the IN keyword in your query
SELECT MIN(sales) AS lowest_sales FROM titles WHERE type = 'children' OR type = 'psychology';

-- 7. How many books do we sell for a price that ends in .99?
SELECT COUNT(*) FROM titles WHERE price LIKE '%.99';

-- 8. What was the lowest page count for books sold in 2001.
SELECT MIN(pages) AS lowest_pages FROM titles WHERE YEAR(pubdate) = 2001;

-- 9. What was the highest cost for a book sold in May
SELECT MAX(price) AS highest_price FROM titles WHERE MONTH(pubdate) = 5;

-- 10. How many biography books cost $12.95 or more and were published in the year 2001
SELECT COUNT(*) FROM titles WHERE type = 'biography' AND price >= 12.95 AND YEAR(pubdate) = 2001;

-- 11. How many books do we publish that have more than 200 pages?
SELECT COUNT(*) FROM titles WHERE pages > 200;

-- 12. What is the lowest page count when considering history and biography books?
SELECT MIN(pages) AS lowest_pages FROM titles WHERE type = 'history' OR type = 'biography';

-- 13. How many books did we publish in the month of August (any year)?
SELECT COUNT(*) FROM titles WHERE MONTH(pubdate) = 8;

-- 14. What was the highest sales figure for children's books
SELECT MAX(sales) AS highest_sales FROM titles WHERE type = 'children';