SELECT DISTINCT title, author AS name FROM books
INNER JOIN authors ON books.author = authors.name
WHERE authors.death_date < books.release
ORDER BY title, author;
