CREATE FUNCTION fnc_person_visits_and_eats_on_date(
	IN pperson varchar default 'Dmitriy', IN pprice numeric default 500, IN pdate
	date default '2022-01-08')
RETURNS TABLE(
                name    varchar
            ) AS $$
BEGIN
RETURN QUERY
SELECT pizzeria.name AS name FROM pizzeria
	JOIN menu ON menu.pizzeria_id=pizzeria.id
	JOIN person_visits ON pizzeria.id=person_visits.pizzeria_id
	JOIN person_order ON person_order.order_date=person_visits.visit_date
	JOIN person ON person.id=person_order.person_id
WHERE person.name=pperson AND menu.price<pprice AND person_order.order_date=pdate AND 
	person_visits.visit_date=pdate; 
END; $$
LANGUAGE plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,
	pdate := '2022-01-01');
