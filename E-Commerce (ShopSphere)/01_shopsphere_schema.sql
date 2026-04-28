-- Database: ecommerce_sales_db
-- Purpose: Store and analyze e-commerce transactional data

-- Drop the database if already exist.
DROP DATABASE IF EXISTS shopsphere_db;

-- Create a fresh database
CREATE DATABASE shopsphere_db;

-- Use the database
USE shopsphere_db;

/* --------------------------------------------------------------------------------------------------------
SUCCESS: Database 'shopsphere_db' created successfully
-----------------------------------------------------------------------------------------------------------*/

-- TABLE 1. CUSTOMERS

-- Drop table if already exists 
DROP TABLE IF EXISTS customers;

-- Recreate the table
CREATE TABLE customers (
    customer_id   SERIAL PRIMARY KEY,
    full_name     VARCHAR(100) NOT NULL,
    email         VARCHAR(150) UNIQUE NOT NULL,
    city          VARCHAR(80),
    state         VARCHAR(80),
    signup_date   DATE NOT NULL,
    gender        VARCHAR(10)
);

-- TABLE 2. PRODUCTS

-- Drop table if already exists 
DROP TABLE IF EXISTS products;

-- Recreate the table.
CREATE TABLE products (
    product_id    SERIAL PRIMARY KEY,
    product_name  VARCHAR(200) NOT NULL,
    category      VARCHAR(80) NOT NULL,
    cost_price    DECIMAL(10, 2) NOT NULL,
    sale_price    DECIMAL(10, 2) NOT NULL
);


-- TABLE 3. ORDERS

-- Drop table if already exists 
DROP TABLE IF EXISTS orders;

-- Recreate the table.
CREATE TABLE orders (
    order_id      SERIAL PRIMARY KEY,
    customer_id   INT NOT NULL REFERENCES customers(customer_id),
    order_date    DATE NOT NULL,
    status        VARCHAR(30) NOT NULL
        CHECK (status IN ('placed', 'confirmed', 'shipped', 'delivered', 'cancelled'))
);


-- TABLE 4. ORDERS_ITEMS

-- Drop table if already exists 
DROP TABLE IF EXISTS orders_items;

-- Recreate the table
CREATE TABLE orders_items (
    item_id       SERIAL PRIMARY KEY,
    order_id      INT NOT NULL REFERENCES orders(order_id),
    product_id    INT NOT NULL REFERENCES products(product_id),
    quantity      INT NOT NULL CHECK (quantity > 0),
    unit_price    DECIMAL(10, 2) NOT NULL
);


-- TABLE 5	. RETURNS

-- Drop table if already exists 
DROP TABLE IF EXISTS returns;

-- Recreate the table

CREATE TABLE returns (
    return_id     SERIAL PRIMARY KEY,
    order_id      INT NOT NULL REFERENCES orders(order_id),
    product_id    INT NOT NULL REFERENCES products(product_id),
    return_date   DATE NOT NULL,
    reason        VARCHAR(100)
        CHECK (reason IN ('defective', 'wrong item', 'not as described', 'changed mind', 'damaged in shipping'))
);


/* --------------------------------------------------------------------------------------------------------
SUCCESS: All 5 tables (customers, products, orders, order_items, returns) created successfully
-----------------------------------------------------------------------------------------------------------*/




