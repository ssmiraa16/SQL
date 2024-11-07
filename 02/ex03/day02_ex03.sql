WITH dates AS (SELECT gs::date AS missing_date
	FROM GENERATE_SERIES('2022-01-01'::date, '2022-01-10'::date, '1 day')
	AS gs),
	visits AS (SELECT visit_date FROM person_visits WHERE 
	person_id BETWEEN 1 AND 2)

SELECT dates.missing_date
FROM dates
FULL JOIN visits ON dates.missing_date=visits.visit_date
WHERE visit_date IS NULL
ORDER BY missing_date ASC
