-- Step 1: Create the Author table
CREATE TABLE Author (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    country VARCHAR(50)
);

-- Step 2: Create the Book table with a foreign key reference to Author
CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Step 3: Insert dummy records into Author
INSERT INTO Author (author_id, author_name, country) VALUES
(1, 'J.K. Rowling', 'United Kingdom'),
(2, 'George R.R. Martin', 'United States'),
(3, 'Haruki Murakami', 'Japan');

-- Step 4: Insert dummy records into Book
INSERT INTO Book (book_id, title, author_id) VALUES
(101, 'Harry Potter and the Sorcerer''s Stone', 1),
(102, 'A Game of Thrones', 2),
(103, 'Kafka on the Shore', 3);

-- Step 5: Perform an INNER JOIN to get the required data
SELECT 
    B.title AS book_title,
    A.author_name,
    A.country
FROM 
    Book B
INNER JOIN 
    Author A ON B.author_id = A.author_id;
