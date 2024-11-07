CREATE UNIQUE INDEX idx_person_discounts_unique 
	ON person_discounts(person_id, pizzeria_id);
SET enable_seqscan = OFF;
EXPLAIN ANALYZE 
SELECT person_discounts.person_id, person_discounts.discount, menu.price
FROM person_discounts
JOIN menu ON menu.pizzeria_id=person_discounts.pizzeria_id;