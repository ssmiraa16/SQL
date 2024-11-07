BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria;
-- SESSION 1
SELECT * FROM pizzeria;
-- SESSION 2
COMMIT;
-- SESSION 1
SELECT * FROM pizzeria;
-- SESSION 2