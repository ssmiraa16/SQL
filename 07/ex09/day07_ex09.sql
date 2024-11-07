SELECT person.address AS address, MAX(age)-(MIN(age)/MAX(age)) AS formula, 
	AVG(age) AS average, 
	CASE WHEN MAX(age)-(MIN(age)/MAX(age)) > AVG(age) THEN 'true' 
	ELSE 'false' 
	END AS comparison
FROM person
GROUP BY person.address
ORDER BY person.address