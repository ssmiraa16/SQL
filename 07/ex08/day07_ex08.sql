SELECT person.address AS address, pizzeria.name AS name, COUNT(*) AS count_of_orders
FROM person 
JOIN person_order ON person.id=person_order.person_id
JOIN menu ON menu.id=person_order.menu_id
JOIN pizzeria ON pizzeria.id=menu.pizzeria_id
GROUP BY pizzeria.name, person.address
ORDER BY person.address, pizzeria.name