SELECT DISTINCT login FROM assistant
WHERE assistant.login NOT IN (SELECT DISTINCT assistant FROM transaction);
