use shopsphere_db;
-- ============================================
-- SECTION: DATA INSERTION
-- PROJECT: E-Commerce Sales Analytics
-- DATABASE: ShopSphere_db
-- ============================================

-- Insert customers
INSERT INTO customers (full_name, email, city, state, signup_date, gender) 
VALUES
	('Aarav Shah',       'aarav.shah@email.com',    'Mumbai',    'Maharashtra', '2022-01-15', 'Male'),
	('Priya Nair',       'priya.nair@email.com',    'Bangalore', 'Karnataka',   '2022-02-08', 'Female'),
	('Rohit Mehta',      'rohit.mehta@email.com',   'Delhi',     'Delhi',       '2022-03-22', 'Male'),
	('Sneha Kapoor',     'sneha.kapoor@email.com',  'Chennai',   'Tamil Nadu',  '2022-04-10', 'Female'),
	('Kiran Rao',        'kiran.rao@email.com',     'Hyderabad', 'Telangana',   '2022-05-19', 'Male'),
	('Meera Joshi',      'meera.joshi@email.com',   'Pune',      'Maharashtra', '2022-06-03', 'Female'),
	('Arjun Singh',      'arjun.singh@email.com',   'Kolkata',   'West Bengal', '2022-07-27', 'Male'),
	('Divya Reddy',      'divya.reddy@email.com',   'Bangalore', 'Karnataka',   '2022-08-14', 'Female'),
	('Vikram Gupta',     'vikram.gupta@email.com',  'Mumbai',    'Maharashtra', '2022-09-09', 'Male'),
	('Ananya Pillai',    'ananya.pillai@email.com', 'Chennai',   'Tamil Nadu',  '2022-10-30', 'Female');

-- Insert products
INSERT INTO products (product_name, category, cost_price, sale_price) 
VALUES
	('Wireless Headphones Pro',    'Electronics',    1800.00, 3499.00),
	('Yoga Mat Premium',           'Sports',          400.00,  899.00),
	('Stainless Steel Bottle',     'Home & Kitchen',  150.00,  399.00),
	('Men''s Running Shoes',       'Clothing',        850.00, 1999.00),
	('Intro to Python (Book)',     'Books',           180.00,  450.00),
	('Bluetooth Speaker Mini',     'Electronics',    1200.00, 2499.00),
	('Air Fryer 4L',               'Home & Kitchen', 2200.00, 4999.00),
	('Women''s Kurta Set',         'Clothing',        600.00, 1299.00),
	('Resistance Band Set',        'Sports',          250.00,  699.00),
	('Data Science Handbook',      'Books',           350.00,  799.00);

-- Insert orders (sample — extend to 100+ for realistic analysis)
INSERT INTO orders (customer_id, order_date, status) 
VALUES
	(1, '2022-02-10', 'delivered'),
	(1, '2022-06-15', 'delivered'),
	(2, '2022-03-05', 'delivered'),
	(3, '2022-04-20', 'delivered'),
	(3, '2022-08-12', 'cancelled'),
	(4, '2022-05-08', 'delivered'),
	(5, '2022-06-01', 'delivered'),
	(6, '2022-07-19', 'delivered'),
	(7, '2022-09-04', 'shipped'),
	(8, '2022-10-22', 'delivered'),
	(9, '2022-11-11', 'delivered'),
	(10,'2022-12-05', 'delivered'),
	(1, '2023-01-18', 'delivered'),
	(2, '2023-02-25', 'delivered'),
	(4, '2023-03-14', 'delivered');

-- Insert order_items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) 
VALUES
		(1,  1, 1, 3499.00),
		(2,  7, 1, 4999.00),
		(3,  3, 2,  399.00),
		(4,  4, 1, 1999.00),
		(5,  2, 1,  899.00),
		(6,  8, 2, 1299.00),
		(7,  6, 1, 2499.00),
		(8,  5, 3,  450.00),
		(9,  9, 2,  699.00),
		(10, 10,1,  799.00),
		(11, 1, 1, 3499.00),
		(12, 3, 1,  399.00),
		(13, 7, 1, 4999.00),
		(14, 4, 1, 1999.00),
		(15, 2, 2,  899.00);

-- Insert returns
INSERT INTO returns (order_id, product_id, return_date, reason) 
VALUES
	(1,  1, '2022-02-18', 'defective'),
	(6,  8, '2022-07-25', 'not as described'),
	(11, 1, '2023-01-27', 'changed mind');
    
-- ==================================================================    
-- SUCCESS: Data insertion completed for all tables
-- ==================================================================