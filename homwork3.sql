-- Создание БД 
CREATE DATABASE IF NOT EXISTS lesson_3; -- Создали БД lesson_3

USE lesson_3;

DROP TABLE IF EXISTS staff;
CREATE TABLE staff
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    post VARCHAR(45),
    seniority INT, 
    salary DECIMAL(8,2),
    age INT
);

INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
 ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
 ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
 ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
 ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
 ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
 ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
 ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
 ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
 ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
 ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
 ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
 ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
 
SELECT * FROM staff;

-- ORDER BY - сортировка 
SELECT
	id,
    salary,
    CONCAT(firstname," ", lastname) AS fullname -- "1" + "1" = "11", "Вася Петров"
FROM staff
ORDER BY salary DESC; -- DESC - по убыванию, по воз-ю - автоматически ставится ASC

-- Получите ТОП-5 самых высокооплачиваемых сотрудников 
SELECT
	id,
    salary,
    CONCAT(firstname," ", lastname) AS fullname -- "1" + "1" = "11", "Вася Петров"
FROM staff
ORDER BY salary DESC
LIMIT 5;

-- SELECT *
-- FROM staff
-- LIMIT 2,3; -- id = 1,2; получаем следующие 3 строчки: 3,4,5 

-- SELECT * 
-- FROM staff
-- LIMIT 3 OFFSET 2;-- id = 1,2; получаем следующие 3 строчки: 3,4,5 
INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
 ('Вася', 'Петров', 'Начальник', 30, 70000, 50);
SELECT
	id,
    salary,
    firstname,
    lastname -- "1" + "1" = "11", "Вася Петров"
FROM staff
ORDER BY lastname DESC, firstname, salary DESC;


-- Группировка 
-- Для каждой отдельно взятой должности
-- среднюю ЗП, мин и макс ЗП, разницу между макс и мин ЗП , кол-во сотрудников 
SELECT
	post as p,
    AVG(salary) AS average, -- буква ё на англ. раскладке 
    SUM(salary) AS `sum`,
    MIN(salary) AS `min`,
    MAX(salary) AS `max`,
    MAX(salary) - MIN(salary) AS diff,
    COUNT(salary) AS `count`
FROM staff
WHERE post != "Уборщик" -- Сработал до группировки
GROUP BY post
HAVING average > 25000; -- На сгруппированные значения 

SELECT 	
	post as p,
	salary as sal
FROM staff
ORDER BY `salary` ; -- Дурной тон 



SELECT DISTINCT post FROM staff ORDER BY post;

SELECT 
SUM(salary) AS result
FROM staff
WHERE post ='Инженер';

SELECT 
SUM(salary) AS result
FROM staff
WHERE post ='Начальник';

SELECT 
SUM(salary) AS result
FROM staff
WHERE post ='Рабочий';

SELECT 
SUM(salary) AS result
FROM staff
WHERE post ='Рабочий';

SELECT 
SUM(salary) AS result
FROM staff
WHERE post ='Уборщик';

SELECT id,
    firstname,
    lastname,
    age
FROM staff
WHERE post ='Рабочий' AND age<=49 AND age>=24;


SELECT post,
	AVG(age) AS 'AVG'
FROM staff
GROUP BY post
HAVING AVG(age)<30 ;















