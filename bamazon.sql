DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) CHARACTER SET binary NULL,
  department_name VARCHAR(100) CHARACTER SET binary NULL,
  price DECIMAL(10,2) UNSIGNED NULL,
  stock INT(10) UNSIGNED NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("No.2 Pencil", "Office Supplies", 0.25, 500);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Sticky Notes", "Office Supplies", 1.00, 200);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Sharpies", "Office Supplies", 1.25, 350);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Legal Pad", "Office Supplies", 1.00, 150);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("5x7 Index Cards", "Office Supplies", 2.00, 75);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Tape", "Office Supplies", 4.00, 125);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Stapler", "Office Supplies", 6.00, 25);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("10 Manilla Folders", "Office Supplies", 3.00, 100);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("100 Envelopes", "Office Supplies", 8.00, 50);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Copy Paper", "Office Supplies", 4.00, 15);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Couch", "Home & Kitchen", 700.00, 5);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Lamp", "Home & Kitchen", 50.00, 20);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Lamp", "Home & Kitchen", 50.00, 20);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Blender", "Home & Kitchen", 35.00, 30);

INSERT INTO products (product_name, department_name, price, stock)
VALUES ("Bar Stool", "Home & Kitchen", 90.00, 3);