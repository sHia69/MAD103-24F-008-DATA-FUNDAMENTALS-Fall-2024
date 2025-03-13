-- 1. What employee had the least sales
SELECT emp_id, sales
FROM empsales
WHERE sales = (SELECT MIN(sales) FROM empsales);

-- 2. Show the publishers that publish children and psychology books
SELECT pub_name
FROM publishers
WHERE pub_id IN ( SELECT pub_id FROM titles WHERE type = 'children') AND pub_id IN (SELECT pub_id FROM titles WHERE type = 'psychology');

-- 3 What book has the least pages
SELECT title_id, pages
FROM titles
WHERE pages = (SELECT MIN(pages) FROM titles);

-- 4. What tiles have an advance greater than $19,000.  Show them in reverse alphabetical order
SELECT title_id, advance
FROM royalties
WHERE advance > 19000
ORDER BY title_id DESC;

-- 5. What book has the most pages
SELECT title_id, pages
FROM titles
WHERE pages = (SELECT MAX(pages) FROM titles);

-- 6. What type of book received the highest advance
SELECT type
FROM titles
WHERE title_id = (SELECT title_id FROM royalties WHERE advance = (SELECT MAX(advance) FROM royalties));

-- 7. What titles have a royalty rate between 0.06 and 0.10.  Show the results in alphabetical order
SELECT title_id, royalty_rate
FROM royalties
WHERE royalty_rate BETWEEN 0.06 AND 0.10
ORDER BY title_id;

-- 8. Who published the book 1977!
SELECT pub_name
FROM publishers
WHERE pub_id = (SELECT pub_id FROM titles WHERE title_name = '1977!');

-- 9. What publisher published books in the year 2000
SELECT pub_name
FROM publishers
WHERE pub_id IN (SELECT pub_id FROM titles WHERE YEAR(pubdate) = 2000);

-- 10. What publisher has published a book that is not under contract
SELECT pub_name
FROM publishers
WHERE pub_id IN (SELECT pub_id FROM titles WHERE contract = 0);