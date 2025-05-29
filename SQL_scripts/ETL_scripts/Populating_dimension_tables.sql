use OLAP_schema;
INSERT INTO dim_date (full_date, day, month, year)
SELECT DISTINCT
    transaction_date,
    DAY(transaction_date),
    MONTH(transaction_date),
    YEAR(transaction_date)
FROM OLTP_schema.dbo.transactions;

INSERT INTO dim_product (product_id, name, category)
SELECT DISTINCT
    product_id,
    name,
    category
FROM OLTP_schema.dbo.products;

INSERT INTO dim_store (store_id, name, region)
SELECT DISTINCT
    store_id,
    name,
    region
FROM OLTP_schema.dbo.stores;


