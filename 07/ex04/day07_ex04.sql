SELECT person.name AS name, COUNT(*) AS count_of_visits
FROM person
JOIN person_visits ON person_visits.person_id=person.id
GROUP BY person.name
HAVING COUNT(*) > 3