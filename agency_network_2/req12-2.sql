SELECT
    CASE WHEN char_length(acronym) = 4 THEN acronym
    ELSE concat(substr(acronym, 1, 2), 0, substr(acronym, 3, 1))
    END AS acronym FROM destination
ORDER BY acronym;
