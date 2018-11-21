DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  item_id  VARCHAR(10) NOT NULL,
  product_name VARCHAR(30) NOT NULL,
  department_name VARCHAR(25) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (id)
);

-- create 10 mock products

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("CAT100", "Rocco's Cat Food", "Pet Goods", 12.50, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("DOG100", "Winston's Dog Food", "Pet Goods", 15.50, 150);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("KIT100", "Oopsie Daisy's Kitten Food", "Pet Goods", 11.50, 200);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("BEV100", "Beverly's Banana Bread", "Food", 4.50, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("BEV290", "Beverly's Brownies", "Food", 1.50, 1000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("HHH001", "Best Paper Plates", "Housewares", 2.50, 2000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("HHH002", "Best Dinner Napkins", "Housewares", 3.50, 3000);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("XBX010", "Fall Out '76 for Xbox One", "Video Games", 59.99, 199);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("PS4076", "Fall Out '76 for PS4", "Video Games", 59.99, 197);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("PCG750", "Fall Out '76 for pc", "Video Games", 59.99, 201);
