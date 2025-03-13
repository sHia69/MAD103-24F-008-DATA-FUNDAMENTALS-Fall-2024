-- Task 1
CREATE TABLE TopSellingBooks (
    BookTitle VARCHAR(255),
    Authors VARCHAR(255),
    SalesInMillions DECIMAL(10, 2)
);

-- Task 2
INSERT INTO TopSellingBooks (BookTitle, Authors, SalesInMillions) VALUES
('The Lion, the Witch and the Wardrobe', 'C. S. Lewis', 85.4),
('She: A History of Adventure', 'H. Rider Haggard', 83.1),
('The Adventures of Pinocchio (Le avventure di Pinocchio)', 'Carlo Collodi', 80.0),
('The Da Vinci Code', 'Dave Brown', 80.23),
('Harry Potter and the Chamber of Secrets', 'J. K. Rowling', 77.0);

-- Task 3
UPDATE TopSellingBooks
SET Authors = 'Dan Brown'
WHERE BookTitle = 'The Da Vinci Code';

-- Task 4
DELETE FROM TopSellingBooks
WHERE Authors = 'Carlo Collodi';

-- View the table to make sure the changes are applied
SELECT * FROM TopSellingBooks;