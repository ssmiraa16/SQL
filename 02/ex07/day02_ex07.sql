SELECT pizzeria.name AS name
FROM pizzeria
JOIN person_visits ON person_visits.pizzeria_id=pizzeria.id
JOIN person ON person.id=person_visits.person_id
JOIN person_order ON person_order.person_id=person.id
JOIN menu ON person_order.menu_id=menu.id
WHERE person.name='Dmitriy' AND person_visits.visit_date='2022-01-08'
	AND menu.price<=800
