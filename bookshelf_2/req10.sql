SELECT title, author FROM books
INNER JOIN authors ON books.author = authors.name
WHERE country = 'France' AND genre = 'Poem'
ORDER BY title, author;
