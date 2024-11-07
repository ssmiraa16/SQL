WITH orders AS (SELECT pizzeria.name AS name, COUNT(*) AS count
	FROM pizzeria
	JOIN menu ON pizzeria.id=menu.pizzeria_id
	JOIN person_order ON menu.id=person_order.menu_id
	GROUP BY pizzeria.name),
	
	visit AS (SELECT pizzeria.name AS name, COUNT(*) AS count
	FROM pizzeria
	JOIN person_visits ON pizzeria.id=person_visits.pizzeria_id
	GROUP BY pizzeria.name)

SELECT orders.name AS name, orders.count+visit.count AS total_count
FROM orders
JOIN visit ON orders.name=visit.name
ORDER BY total_count DESC, name ASC 