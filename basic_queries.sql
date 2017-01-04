-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * from authors;
-- Get just the name and birth year of all authors
select name, birth_year from authors;
-- Get all authors born in the 20th centruy or later
Select name, birth_year from authors where birth_year >1900;
-- Get all authors born in the USA
Select name, nationality FROM authors WHERE nationality='United States of America';
-- Get all books published on 1985
Select title FROM books WHERE publication_date='1985';
-- Get all books published before 1989
Select title FROM books WHERE publication_date<'1989';
-- Get just the title of all books.
Select title FROM books;
-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been 
  2011
  SELECT publication_date FROM books WHERE title='A Dance with Dragons';


-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
 SELECT * from books Where title LIKE '%the%';
-- Add yourself as an author
INSERT INTO authors Values (9, 'Gisella Walter', 'Chilean', 1968);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books Values (69,'Things I Did TO Earn a Buck in My Twenties', 2021,9);
INSERT INTO books Values (70,'Lies My Mother Told Me', 2022,9);
-- Update one of your books to have a new title
UPDATE books SET title='Lies My Mother Told Escobar' where title = 'Lies My Mother Told Me';
-- Delete your books
DELETE FROM books where publication_date >2020;
-- Delete your author entry
DELETE FROM authors where name='Gisella Walter';