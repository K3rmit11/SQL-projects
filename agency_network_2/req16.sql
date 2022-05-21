UPDATE booking
SET customer_surname = 'De Villardière'
WHERE customer_surname = 'de Villardière';

DELETE FROM customer
WHERE surname = 'de Villardière';
