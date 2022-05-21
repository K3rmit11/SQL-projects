SELECT title, author FROM books p1
WHERE release IN (select MIN(release) FROM books WHERE p1.author = author)
ORDER BY title;
