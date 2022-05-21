SELECT regexp_replace(country, '[^a-zA-Z]', '', 'g') AS country, regexp_replace(city, '[^a-zA-Z]', '', 'g') AS city FROM destination
ORDER BY country, city;
