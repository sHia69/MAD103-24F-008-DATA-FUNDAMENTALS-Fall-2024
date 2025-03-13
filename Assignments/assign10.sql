-- 1. Select the titles, and publishers for books with an advance of $1,000,000
SELECT titles.title_name, publishers.pub_name
FROM titles
JOIN publishers ON titles.pub_id = publishers.pub_id
JOIN royalties ON titles.title_id = royalties.title_id
WHERE royalties.advance = 1000000;

-- 2. Show the titles, the author's full name (first and last name as a single value) and publisher for any books published by publishers with Press in their names 
SELECT titles.title_name, CONCAT(authors.au_fname, ' ', authors.au_lname) AS author_name, publishers.pub_name
FROM titles
JOIN title_authors ON titles.title_id = title_authors.title_id
JOIN authors ON title_authors.au_id = authors.au_id
JOIN publishers ON titles.pub_id = publishers.pub_id
WHERE publishers.pub_name LIKE '%Press%';

-- 3. Show me the sales and employee title for Lord Copper
SELECT e.emp_name, es.sales, h.emp_title
FROM pub_employees e
JOIN empsales es ON e.emp_id = es.emp_id
JOIN hire h ON e.emp_id = h.emp_id
WHERE e.emp_name = 'Lord Copper';

-- 4. Show me the name, sales and title for employees with sales greater than 500 - order by sales in ascending order
SELECT e.emp_name, es.sales, h.emp_title
FROM pub_employees e
JOIN empsales es ON e.emp_id = es.emp_id
JOIN hire h ON e.emp_id = h.emp_id
WHERE es.sales > 500
ORDER BY es.sales;

-- 5. Select the titles and royalty rate for books with a royalty greater than 0.05.  Order by the royalty rate in descending order
SELECT title_name, royalty_rate
FROM titles
JOIN royalties ON titles.title_id = royalties.title_id
WHERE royalty_rate > 0.05
ORDER BY royalty_rate DESC;