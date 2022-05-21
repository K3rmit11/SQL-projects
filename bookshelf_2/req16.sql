SELECT title, author, release FROM books
WHERE release < '1900-01-01' OR release > '1999-12-31'
ORDER BY release DESC, title, author;
