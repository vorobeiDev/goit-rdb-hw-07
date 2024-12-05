USE mydb;

SELECT
    id,
    date,
    YEAR(date) AS year,
    MONTH(date) AS mohth,
    DAY(date) AS day
FROM orders;

SELECT
    id,
    date,
    date + INTERVAL 1 DAY AS next_date
FROM orders;

SELECT
    id,
    date,
    TIMESTAMPDIFF(SECOND, date, NOW()) AS seconds_from_date
FROM orders;

SELECT
    COUNT(id) AS rows_count
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

SELECT
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS json
FROM orders;