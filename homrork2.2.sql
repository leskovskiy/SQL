USE homework2;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS buyer;
CREATE TABLE buyer
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	date_birt DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(20) 
);
CREATE TABLE orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	buyer_id INT,
	amount INT,
	count_order INT,
	manufacter VARCHAR(45),
	FOREIGN KEY (buyer_id)
	REFERENCES Buyer(id)
);


INSERT buyer(date_birt,first_name,last_name,email)
VALUES
	("1998-12-04","Mikhail","Petrov","qwe@mail.ru"),
    ("2003-03-23","Julia","Ivanova","qwe@mail.ru"),
    ("1970-10-02","IVAN","Ivanova","qwe@mail.ru"),
    ("1985-11-21","Maria","Vasilyva","qwe@mail.ru"),
    ("1990-07-03","Julia","Ivanova","qwe@mail.ru");
    

INSERT orders(buyer_id,amount,count_order,manufacter)
VALUES 
	(1,1900,3,"Shishki"),
    (2,150,4,"Amazon"),
    (3,2500,10,"Ozon"),
    (4,150,4,"Ygodki");


SELECT buyer.first_name, buyer.id, orders.buyer_id, orders.amount
FROM orders, Buyer 
WHERE orders.buyer_id = buyer.id;


ALTER TABLE orders
ADD COLUMN status INT AFTER count_order;
UPDATE orders
SET status = RAND();

SELECT *
FROM orders;

SELECT status,
	CASE WHEN status = '1'  THEN  'заказ оплачен'
    ELSE 'заказ не оплачен'
    END AS messag
FROM orders;
    
