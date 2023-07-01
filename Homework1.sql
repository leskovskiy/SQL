CREATE DATABASE homework;
USE homework;
DROP TABLE IF EXISTS phone;
CREATE TABLE phone
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    phone_name VARCHAR(45) NOT NULL,
    manufacturer VARCHAR(45),
    price INT,
    productCount INT
);

DESC phone;
DESCRIBE phone;

INSERT  phone(phone_name,manufacturer,price,productCount)
VALUES 
	("Galaxy", "Samsung",999,1), 
    ("X","Iphon",999,3),
    ("Note Pro 57578", "Samsung",600,2), 
    ("Lumia 550","Nokia",300,4),
    ("qwer", "Samsung",600,1), 
    ("14 Pro","Iphon",900,0);
    
SELECT phone_name,manufacturer,price
FROM phone
WHERE productCount > 2;

SELECT *
FROM phone
WHERE manufacturer = "Samsung"

    

    