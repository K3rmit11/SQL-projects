SELECT author AS name,
CASE WHEN COUNT(author) = 1 THEN '1 book'
ELSE concat(count(author), ' books')
END AS stocks
FROM books
GROUP BY author
ORDER BY author;
