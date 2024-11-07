DROP FUNCTION fnc_persons_female(), fnc_persons_male();

CREATE FUNCTION fnc_persons(IN pgender varchar default 'female')
RETURNS TABLE(
                id      bigint,
                name    varchar,
                age     integer,
                gender  varchar,
                address varchar
            ) AS $$
SELECT * FROM person
WHERE gender=pgender; $$
LANGUAGE SQL;

select *
from fnc_persons(pgender := 'male');
select *
from fnc_persons();
