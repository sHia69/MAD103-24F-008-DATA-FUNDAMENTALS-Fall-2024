-- 1. Show me all the cities and how many miles away they are for all of our roadtrip
SELECT city_name, distance_miles
FROM roadtrip;

-- 2. Show me the first and last names of all the authors in our table
SELECT au_fname AS FirstName, au_lname AS LastName
FROM authors;

-- 3.Show me the publishers and the city they are in
SELECT pub_name AS Publisher, city
FROM publishers;

-- 4. Show me the state, city and country for Tenterhooks Press publisher
SELECT state, city, country
FROM publishers
WHERE pub_name = 'Tenterhooks Press';

-- 5. Show me the type, price and number of pages for a book called 'I Blame My Mother'
SELECT type, price, pages
FROM titles
WHERE title_name = 'I Blame My Mother';

-- 6. Select all the information in the authors table
SELECT *
FROM authors;

-- 7. Select the titles and number of pages for books that start with the letters A, B, C, D, E, F, G, H I, J, or K - Do this without a compound condition or an IN
SELECT title_name, pages
FROM titles
WHERE title_name LIKE 'A%'
   OR title_name LIKE 'B%'
   OR title_name LIKE 'C%'
   OR title_name LIKE 'D%'
   OR title_name LIKE 'E%'
   OR title_name LIKE 'F%'
   OR title_name LIKE 'G%'
   OR title_name LIKE 'H%'
   OR title_name LIKE 'I%'
   OR title_name LIKE 'J%'
   OR title_name LIKE 'K%';

-- 8. I met an author named Chris.  Can you get his full name and phone number?
SELECT CONCAT(au_fname, ' ', au_lname) AS full_name, phone 
FROM authors 
WHERE au_fname LIKE '%Chris%';

-- 9. Show me all the psychology books and biography books.  Show the titles in reverse alphabetical order (Z -> A), the types and pages
SELECT title_name, type, pages
FROM titles
WHERE type = 'psychology'
   OR type = 'biography'
ORDER BY title_name DESC;

-- 10.Show me the titles, type of book and the number of pages for all books in our tables
SELECT title_name, type, pages
FROM titles;