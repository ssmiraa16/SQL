SELECT person.name AS name, COUNT(*) AS count_of_visits
FROM person_visits
	JOIN person ON person.id=person_visits.person_id
GROUP BY person.name
ORDER BY count_of_visits DESC, name ASC
LIMIT 4