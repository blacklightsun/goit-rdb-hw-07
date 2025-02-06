use mydb;

-- task1
-- -----------
SELECT
	id,
	date,
	year(date) as order_year,
	month(date) as order_month,
	day(date) as order_day
FROM orders;

-- task2
-- -----------
SELECT
	id,
	date,
	DATE_ADD(date, INTERVAL 1 day) as next_date
FROM orders;

-- task3
-- -----------
SELECT
	id,
	date,
	UNIX_TIMESTAMP(date) as unix_date
FROM orders;

-- task4
-- -----------
SELECT	count(id)
FROM orders
where date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00';


-- task5
-- -----------
SELECT
	id,
	date, 
	JSON_OBJECT("id", id, "date", date) as json_obect
FROM orders;
