BEGIN;
-- SESSION 1
BEGIN;
-- SESSION 2
UPDATE pizzeria SET rating = 1 WHERE id=1;
-- SESSION 1
UPDATE pizzeria SET rating = 0 WHERE id=2;
-- SESSION 2
UPDATE pizzeria SET rating = 3 WHERE id=2;
-- SESSION 1
UPDATE pizzeria SET rating = 4 WHERE id=1;
-- SESSION 2
COMMIT;
-- SESSION 1
COMMIT;
-- SESSION 2