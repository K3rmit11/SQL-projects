SELECT DISTINCT assistant, sum(can.price) AS price FROM transaction, can
WHERE can.name = transaction.can
GROUP BY assistant
ORDER BY price DESC
LIMIT 3;
