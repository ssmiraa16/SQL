CREATE FUNCTION fnc_fibonacci(IN pstop bigint default 10) RETURNS TABLE(
	numbers bigint 
) AS $$ 
	WITH RECURSIVE fib(a,b) AS (
	SELECT 0 AS a, 1 as b
	UNION ALL
	SELECT b, a+b
	FROM fib
	WHERE b<pstop
)
SELECT a FROM fib;
$$ LANGUAGE SQL;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();