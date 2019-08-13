CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  item_id INT NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price INT default 0,
  stock_quantity INT default 0
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 1, "chair", "furniture", 200, 3);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 2, "couch", "furniture", 600, 4);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 3, "mustard", "food", 10, 100);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 4, "butter", "food", 2, 88);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 5, "phone", "technology", 899, 3);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 6, "fur", "fabric", 19, 8);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 7, "frisbee", "sports", 12, 9);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 8, "ball", "sports", 8, 20);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 9, "laptop", "technology", 399, 51);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ( 10, "headphones", "technology", 60, 5);








