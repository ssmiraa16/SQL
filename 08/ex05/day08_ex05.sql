BEGIN;
-- SESSION 1
BEGIN;
-- SESSION 2
SELECT SUM(rating) FROM pizzeria;
-- SESSION 1
INSERT INTO pizzeria (id, name, rating) VALUES (10, 'Kazan Pizza', 5);
-- SESSION 2
COMMIT;
-- SESSION 2
SELECT SUM(rating) FROM pizzeria;
-- SESSION 1
COMMIT;
-- SESSION 1
SELECT SUM(rating) FROM pizzeria;
-- SESSION 1
SELECT SUM(rating) FROM pizzeria;
-- SESSION 2