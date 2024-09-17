--ЗАДАНИЕ 1
SELECT *
FROM Students;
SELECT fio
FROM Students;
SELECT mid_all_year, min_mid_year, max_mid_year
FROM Students;
SELECT fio
FROM Students
WHERE min_mid_year > 2;
SELECT DISTINCT country
FROM Students;
SELECT DISTINCT city
FROM Students;
SELECT DISTINCT group_name
FROM Students;


--ЗАДАНИЕ 2
SELECT *
FROM Students
WHERE min_mid_year BETWEEN 4 AND 5;
SELECT *
FROM Students
WHERE day_birth < '2014-12-31'
SELECT *
FROM Students
WHERE day_birth BETWEEN '2013-01-01' AND '2020-12-31';
SELECT *
FROM Students
WHERE fio IN ('Пилов М М');
SELECT *
FROM Students
WHERE phone LIKE '%111%';
SELECT *
FROM Students
WHERE mail LIKE 'ы%';

--задание 3
SELECT MIN (min_mid_year) AS 'минимальный балл'
FROM Students
SELECT MAX (max_mid_year) AS 'максимальный балл'
FROM Students

SELECT COUNT(fio) AS 'количество студентов'
FROM Students
WHERE city='Ртын';

SELECT COUNT(fio) AS 'количество студентов'
FROM Students
WHERE country='Ртания';

SELECT COUNT(fio) AS 'минимальный балл по математике'
FROM Students
WHERE min_mid_year=(SELECT MIN(min_mid_year) FROM Students);

SELECT COUNT(fio) AS 'максимальный балл по математике'
FROM Students
WHERE max_mid_year=(SELECT MAX(max_mid_year) FROM Students);

SELECT COUNT(fio) AS 'максимальный балл по математике'
FROM Students
WHERE max_mid_year=(SELECT MAX(max_mid_year) FROM Students);