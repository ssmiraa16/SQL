WITH p1 AS (SELECT menu.pizza_name AS pizza_name, pizzeria.name AS
	pizzeria_name_1, menu.price AS price
	FROM menu
	JOIN pizzeria ON pizzeria.id=menu.pizzeria_id),
p2 AS (SELECT menu.pizza_name AS pizza_name, pizzeria.name AS
	pizzeria_name_2, menu.price AS price
	FROM menu
	JOIN pizzeria ON pizzeria.id=menu.pizzeria_id)

SELECT p1.pizza_name AS pizza_name, p1.pizzeria_name_1 AS pizzeria_name_1,
p2.pizzeria_name_2 AS pizzeria_name_2, p1.price AS price
FROM p1
JOIN p2 ON p1.pizza_name=p2.pizza_name AND p1.price=p2.price
WHERE pizzeria_name_1<pizzeria_name_2
ORDER BY pizza_name