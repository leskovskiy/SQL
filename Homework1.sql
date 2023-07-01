CREATE DATABASE homework;
USE homework;
DROP TABLE IF EXISTS phone;
CREATE TABLE phone
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    phone_name VARCHAR(45) NOT NULL,
    manufacturer VARCHAR(45),
    price INT
);

DESC phone;
DESCRIBE phone;

INSERT  phone(phone_name,manufacturer,price)
VALUES 
	("Galaxy", "Samsung",999), 
    ("X","Iphon",999),
    ("Note Pro 57578", "Samsung",600), 
    ("Lumia 550","Nokia",300),
    ("qwer", "Samsung",600), 
    ("14 Pro","Iphon",900);
SELECT phone_name,manufacturer,price
FROM phone

    
SELECT *
FROM phone
WHERE manufacturer = "Samsung";
    