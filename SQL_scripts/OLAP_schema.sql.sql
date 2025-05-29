USE OLAP_schema;
GO

-- dim_date
CREATE TABLE dim_date (
    date_id INT IDENTITY(1,1) PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    year INT
);
GO

-- dim_product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50)
);
GO

-- dim_store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    name VARCHAR(100),
    region VARCHAR(50)
);
GO

-- fact_sales
CREATE TABLE fact_sales (
    product_id INT,
    store_id INT,
    date_id INT,
    quantity_sold INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);
GO
