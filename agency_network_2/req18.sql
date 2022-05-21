SELECT surname, employee.name, email FROM employee
JOIN agency
ON code = agency_code AND ratings > 6
ORDER BY surname, name, email;
