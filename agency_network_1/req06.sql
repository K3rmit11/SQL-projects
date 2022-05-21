SELECT destination_acronym AS destination , customer_surname AS customer, travelers, end_date - start_date AS number_of_days FROM booking
ORDER BY number_of_days DESC, destination, customer;
