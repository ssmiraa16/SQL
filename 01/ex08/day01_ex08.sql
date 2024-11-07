SELECT person_order.order_date, CONCAT(p.name, ' (age:', 
	p.age, ')') AS person_information 
FROM person_order
NATURAL JOIN person AS p (person_id)
ORDER BY order_date ASC, person_information ASC