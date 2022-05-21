SELECT title, author, cast (substr(cast(release as varchar) , 1, 4) AS int)
AS release_year FROM books
ORDER BY release_year DESC, title, author;
