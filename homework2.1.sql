CREATE DATABASE homework2;
USE homework2;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name_sales VARCHAR(45),
    count_sales INT,
    manufactire VARCHAR(45),
    price INT
    
);

DESC sales;
DESCRIBE sales;

INSERT sales(name_sales,count_sales,manufactire,price)
VALUES

	("phone", 100,"Samsung",999),
    ("toys", 30,"Big_Toys",20),
    ("cup",250,"handMy",200),
    ("flower",4,"Cvetochek",50),
    ("cat",578,"Kotiki",30);
    
SELECT *
FROM sales
WHERE count_sales < 100;

SELECT *
FROM sales
WHERE count_sales >=100 AND count_sales<= 300;


SELECT *
FROM sales
WHERE  count_sales> 300;


    
    
