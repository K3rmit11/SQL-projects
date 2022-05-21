SELECT title ,author FROM books
WHERE genre = 'Fantasy' OR genre = 'Epic fantasy' OR genre = 'High fantasy'
ORDER BY title, author;
