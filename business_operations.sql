CREATE DATABASE soccer_store;

CREATE TABLE categories (
categoryID INT PRIMARY KEY AUTO_INCREMENT,
category_item_name VARCHAR (50) NOT NULL);

CREATE TABLE suppliers (
supplierID INT PRIMARY KEY AUTO_INCREMENT,
supplier_fname VARCHAR (50),
supplier_lname VARCHAR (50),
company_name VARCHAR (255) NOT NULL,
phone_number VARCHAR (45) NOT NULL, 
date_of_supply DATE);

CREATE TABLE products (
productID INT PRIMARY KEY AUTO_INCREMENT,
categoryID INT,
supplierID INT,
product_name VARCHAR (100) NOT NULL,
price_for_product DECIMAL (12,2) NOT NULL,
FOREIGN KEY (categoryID) REFERENCES categories(categoryID),
FOREIGN KEY (supplierID) REFERENCES suppliers (supplierID)
);

CREATE TABLE customers (
customerID INT PRIMARY KEY AUTO_INCREMENT,
customer_fname VARCHAR (50),
customer_lname VARCHAR (50),
customer_phone_number VARCHAR (45),
chicago_fire_fan ENUM ('YES', 'NO')
);

CREATE TABLE employees (
employeeID INT PRIMARY KEY AUTO_INCREMENT,
employee_fname VARCHAR (50) NOT NULL,
employee_lname VARCHAR (50) NOT NULL,
employee_phone_number VARCHAR (45) NOT NULL,
salary DECIMAL (10,2) NOT NULL,
full_time ENUM ('YES', 'NO')
);

CREATE TABLE inventory (
inventoryID INT PRIMARY KEY AUTO_INCREMENT,
productID INT,
supplierID INT,
quantity_in_stock INT NOT NULL,
restock_date DATE NOT NULL,
FOREIGN KEY (productID) REFERENCES products(productID),
FOREIGN KEY (supplierID) REFERENCES suppliers(supplierID)
);

CREATE TABLE orders (
orderID INT PRIMARY KEY AUTO_INCREMENT,
employeeID INT,
customerID INT,
datetime_of_order DATETIME,
total_price DECIMAL (10,2),
payment_type VARCHAR (50) NOT NULL,
FOREIGN KEY (employeeID) REFERENCES employees(employeeID),
FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

CREATE TABLE order_products (
order_productsID INT PRIMARY KEY AUTO_INCREMENT,
orderID INT,
productID INT,
product_price DECIMAL (10,2) NOT NULL,
quantity INT NOT NULL,
FOREIGN KEY (orderID) REFERENCES orders (orderID),
FOREIGN KEY (productID) REFERENCES products(productID)
);






