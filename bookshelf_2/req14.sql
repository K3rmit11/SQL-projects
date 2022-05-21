SELECT name,
CASE WHEN death_date IS NOT NULL THEN death_date - birth_date
ELSE '2000-01-01' - birth_date
END AS days
FROM authors
WHERE birth_date < '2000-01-01'
ORDER BY name;
