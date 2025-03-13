
-- 1. Create a table called instructors.  The purpose of this table is to house the following information:
-- An employee id column that is a number – this will be the primary key and it can’t be left empty.
-- A first name column that can hold up to 25 characters and can not be left empty
-- A last name column that can hold up to 30 characters and can not be left empty
-- An address column that can hold up to 10 characters and can not be left empty
-- A salary column that stores salaries.  Our top employee makes $125,000 a year.  We want to make sure that if no values are presented, then the default salary of $45,000 a year is entered.
-- A marital status column with a fixed length of 1 – we will store the values Y or N
-- A column to represent the course that they prefer to teach - for example MAD103, WEB110, etc.  Note that all course start with three letters and end with three numbers
-- Store the school name the employee works in – for example, Zeklelman School of Business and IT, Media Arts, etc.

CREATE TABLE instructors (
    employee_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    address VARCHAR(10) NOT NULL,
    salary DECIMAL(10, 2) DEFAULT 45000 CHECK (salary <= 125000),
    marital_status CHAR(1) CHECK (marital_status IN ('Y', 'N')),
    preferred_course CHAR(6) CHECK (preferred_course REGEXP '^[A-Z]{3}[0-9]{3}$'),
    school_name VARCHAR(50)
);

-- 2. We want to store the following information in a table. Create the table that would store this kind of information
-- Albums:
-- Artist: Nirvana
-- Album Title: Nevermind
-- Record Label: Geffen
-- Price: $56.95 
-- SKU: 13274
-- Format: LP, 180 Gram

-- Artist: Pink Floyd
-- Album Title: Dark Side of the Moon
-- Record Label: EMI Music/Sony
-- Price: $44.95
-- SKU: 19619
-- Format: LP, 180 Gram

CREATE TABLE albums (
    artist VARCHAR(50) NOT NULL,
    album_title VARCHAR(100) NOT NULL,
    record_label VARCHAR(50),
    price DECIMAL(10, 2),
    sku INT PRIMARY KEY,
    format VARCHAR(20)
);