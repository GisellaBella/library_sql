-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
Select * FROM books JOIN authors ON (authors.id=books.author_id) where name ='George R.R. Martin';
-- Find all fields (book and author related) for all books written by Milan Kundera.
Select * FROM books JOIN authors ON (authors.id=books.author_id) where name ='Milan Kundera';
-- Find all books written by an author from China or the UK.

Select * FROM books JOIN authors ON (authors.id=books.author_id)  Where (nationality = 'China' OR nationality = 'United Kingdom');
-- Find out how many books Albert Camus wrote.
Select title FROM books JOIN authors ON (authors.id=books.author_id)  Where name='Albert Camus';
-- Find out how many books written before 1980 were by authors not from the US.
42
Select title FROM books JOIN authors ON (authors.id=books.author_id)  Where nationality != 'United States of America';
-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
 SELECT name from authors Where name LIKE 'J%';
-- Find all books whose titles contain 'the'.
 SELECT title from books Where title LIKE '%the%';