DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products(
item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
department_name VARCHAR(50),
price integer(10),
stock_quantity integer(10),
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("nikon", "electronics", 500.00, 50);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("laptop", "electronics", 800.00, 50);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("flashlight", "electronics", 25.00, 100);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("earbuds", "electronics", 150.00, 50);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("couch", "home", 200, 5);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("guitar", "musical_instruments", 150.00, 3);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("photoshop", "software", 190.00, 15);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("table", "home", 100.00, 10);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("doll", "toys", 150.00, 50);

INSERT INTO products (product_name,department_name, price, stock_quantity)
VALUES ("toy_car", "toys", 150.00, 50);