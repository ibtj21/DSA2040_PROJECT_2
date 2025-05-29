USE OLTP_schema;
GO

-- Customers table
CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    registered_date DATE
);

-- Products table
CREATE TABLE products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Stores table
CREATE TABLE stores (
    store_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(50)
);

-- Transactions table
CREATE TABLE transactions (
    transaction_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
    product_id INT FOREIGN KEY REFERENCES products(product_id),
    store_id INT FOREIGN KEY REFERENCES stores(store_id),
    quantity INT NOT NULL,
    transaction_date DATE NOT NULL
);
