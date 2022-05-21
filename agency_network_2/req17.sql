UPDATE agency
SET ratings = ratings * 2
WHERE code NOT IN (212, 101, 213);
