CREATE DATABASE homwork4;
USE homwork4;
DROP TABLE IF EXISTS shops;
CREATE TABLE shops (
	id INT,
    shopname VARCHAR (100),
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS cats;
CREATE TABLE cats (
	cats_name VARCHAR (100),
    id INT,
    PRIMARY KEY (id),
    shops_id INT,
    CONSTRAINT fk_cats_shops_id FOREIGN KEY (shops_id)
        REFERENCES shops (id)
);

INSERT INTO shops
VALUES 
		(1, "Четыре лапы"),
        (2, "Мистер Зоо"),
        (3, "МурзиЛЛа"),
        (4, "Кошки и собаки");

INSERT INTO cats
VALUES 
		("Murzik",1,1),
        ("Nemo",2,2),
        ("Vicont",3,1),
        ("Zuza",4,3);
        
SELECT * FROM shops;
SELECT * FROM cats;


-- Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)

SELECT s.shopname,
        c.cats_name 
FROM cats  AS c
LEFT JOIN shops  AS s
ON s.id = c.shops_id

UNION ALL

SELECT s.shopname,
        c.cats_name 
FROM cats  AS c
RIGHT JOIN shops  AS s
ON s.id = c.shops_id;


-- Вывести магазин, в котором продается кот “Мурзик”

SELECT 
    s.shopname,
    s.id,
    c.id
FROM shops s
JOIN cats c ON s.id=c.shops_id 
WHERE c.cats_name = "Murzik";

-- Вывести магазины, в которых НЕ продаются коты “Мурзик” и “Zuza”\\

SELECT 
    s.shopname,
    s.id,
    c.cats_name
FROM shops s
JOIN cats c ON s.id=c.shops_id 
WHERE c.cats_name != "Murzik" AND c.cats_name != "Zuza";


        


