
INSERT INTO soccer_store.categories (category_item_name)
VALUES('Jerseys'),('Shorts'), ('socks'), ('Shin Guards'), ('Cleats'), ('Balls'), ('Cones'), ('Recovery');

INSERT INTO soccer_store.customers (customer_fname, customer_lname, customer_phone_number,
chicago_fire_fan)
VALUES ('Jane', 'Doe', '605-922-3973', 'YES');

INSERT INTO soccer_store.customers (customer_fname, customer_lname, customer_phone_number,
chicago_fire_fan)
VALUES ('John', 'Brown', '334-556-9583', 'YES'), ('Ted', 'Smith', '659-224-1102', 'NO'),
('Jeff', 'Hall', '770-493-3215', 'NO'), ('Leo', 'Mess', '123-456-7890', 'NO');

INSERT INTO employees (employee_fname, employee_lname, employee_phone_number, salary, full_time)
VALUES ('Bill', 'Short', '111-222-3333', 46121.56, 'YES'),
('Kevin', 'Tall', '123-098-5883', '60544.11', 'YES'),
('Josh', 'Pen', '334-902-8832', '70445.79', 'YES'),
('Chris', 'Shine', '661-203-8473', '25765.09', 'NO'),
('Lyle', 'Wallace', '770-993-5544', '50043.99', 'YES');

INSERT INTO suppliers (supplier_fname, supplier_lname, company_name, phone_number, date_of_supply)
VALUES ('Emma', 'Johnson', 'Nike', '442-990-8473', '2024-10-31'),
('Liam', 'Smith', 'Adidas', '546-029-0032', '2024-11-01'),
('Ava', 'Martinez', 'Mizuno', '438-459-0328', '2024-11-12'),
('Noah', 'Brown', 'Puma', '798-123-5643', '2024-11-04'),
('Sophia', 'Davis', 'Under Armor', '110-487-9123', '2024-11-03');

INSERT INTO products (categoryID, supplierID, product_name, price_for_product)
VALUES (1,1, 'Large Barcelona Away Kit Authentic', 50.00),
(1,2, 'Small 2024 Mexico Home Kit Replica', 25.00),
(3,1, 'Large Nike Blue socks', 15.00),
(5,5, 'Under Armour Mens Shadow Elite size 11', 100.00),
(6,4, 'Puma Cumbre CONMEBOL ball size 5', 30.00);

INSERT INTO inventory (productID, supplierID, quantity_in_stock, restock_date)
VALUES (1,1, 40, '2024-12-01'),
(2,2, 28, '2025-01-05'),
(3,1, 27, '2024-11-15'),
(4,5, 50, '2025-02-12'),
(5,4, 150, '2025-03-01');

INSERT INTO orders (employeeID, customerID, datetime_of_order, total_price, payment_type)
VALUES (1,2, '2024-10-31 12:30:55', 70.00, 'Card'),
(4,3, '2024-10-31 13:12:41', 45.00, 'Card'),
(1,4, '2024-10-31 13:44:11', 20.00, 'Cash'),
(4,1, '2024-10-31 14:01:33', 200.00, 'Card'),
(1,1,'2024-10-31 11:31:27', 100.00, 'cash');

INSERT INTO order_products (orderID, productID, product_price, quantity)
VALUES (1, 1, 100.00, 1),
(2, 2, 70.00, 1),
(3,5, 45.00, 1),
(4,3, 20.00,1),
(5,4, 200.00, 1);