# DSA2040_PROJECT_2 : OLTP + OLAP Integration
## Table of Contents
- [Project Descreption](#project-descreption)  
- [Objective](#objective)  
- [Tools](#tools)  
- [Repository Contents](#repository-contents)
- [How to Use](#how-to-use)
- [Star Schema Design](#Star-Schema-Design)
- [Reflection & Discussion](#reflection--discussion)  
- [Collaborators / Team members](#collaborators--team-members)  
- [License](#license)

### Project Descreption
- This project simulates a real-world retail business scenario by integrating OLTP (Online Transaction Processing) and OLAP (Online Analytical Processing) systems.The project demonstrates core data engineering and warehousing concepts such as data modeling, transformation, and aggregation.

---

### Objective
- **Design a normalized OLTP schema** to capture real-time transactional data such as customer purchases, product details, and store information.
- **Develop a denormalized OLAP star schema** to enable efficient data analysis and reporting.
- **Implement an ETL (Extract, Transform, Load) process** to move and transform data from the OLTP system to the OLAP data warehouse.
- **Run analytical queries** on the OLAP system to generate insights such as monthly revenue trends and top-selling products.
- **Demonstrate the importance of separating operational and analytical systems** for better performance, scalability, and decision-making.

---

### Tools 
- DBMS: Microsoft SQL Server Management Studio  
- SQL Client: pgAdmin  
- Languages: TSQL  

---

## Repository Contents
```
├── SQL_scripts
│ ├── OLAP_schema.sql  : SQL script to create OLAP tables
│ ├── Data_simulation.sql: SQL commands to simulate OLTP data
│ ├── OLTP_schema.sql : SQL script to create OLTP tables
| ├── OLAP_queries
| | ├── Monthly_sales_trends
| | └── Top_selling_products
| └── ETL_scripts
| | ├── Populating_dimension_tables
| | └──  Populating_fact_table
├── Sample_simulated_OLTP_data : Folder containing simulated CSV files
│ ├── customers_simulated_data.csv
│ ├── products_simulated_data.csv
│ ├── stores_simulated_data.csv
│ └── transactions_simulated.csv
├── OLAP_queries_outputs: Exported CSV files, which are the result of the query
├── README.md : This documentation file
└── License
``` 


## How to use  
1. Setup a Microsoft SQL Server Management Studio and pgAdmin client. 
1. Initialize OLTP database.
2. Create OLTP tables using OLTP_schema.sql.
3. Populate sample transactional data using Data_simulation.sql .
4. Set up OLAP warehouse with a star schema using OLAP_schema.sql.
5. Run ETL Populating_dimension_tables.sql to populate dimention tables.
4. Run ETL Populating_fact_table.sql to populate fact_sales.
5. Execute OLAP_queries queries.
























# OLTP to OLAP Data Warehouse Project (SQL Server Edition)


---

## Project Overview

This project includes:
- Creating both OLTP and OLAP schemas.
- Populating the OLTP system with sample data.
- Extracting and transforming data using `INSERT INTO ... SELECT` queries.
- Loading into dimension and fact tables in the OLAP schema.

---

## Tools & Technologies

- **Microsoft SQL Server**
- **SQL Server Management Studio (SSMS)**
- **CSV files** (optional for data import)
- **T-SQL**

---

##  Reflection Questions & Answers

### 1. Why is the OLTP system normalized and the OLAP system denormalized?

- **OLTP systems** are normalized to reduce data redundancy and ensure data integrity during transactional operations. This structure optimizes the speed and accuracy of inserts, updates, and deletes.
- **OLAP systems** are denormalized to simplify complex queries and improve read performance for analytical processing. Denormalization reduces the number of joins needed when querying large datasets, speeding up reporting and analysis.

---

### 2. What challenges would you face if you ran analytical queries directly on the OLTP system?

- OLTP systems are optimized for transactional speed, not complex, large-scale queries, so analytical queries could cause slowdowns.
- Running heavy analytical queries on OLTP could lead to locking and blocking, negatively impacting the performance of day-to-day operations.
- OLTP databases often lack historical or aggregated data needed for trend analysis, limiting the insights you can gain.

---

### 3. How can automation (e.g., scheduled ETL jobs) help in a real-world data pipeline?

- Automation ensures data is regularly and reliably updated without manual intervention, reducing errors and operational overhead.
- Scheduled ETL jobs enable timely availability of fresh data for analysis, supporting faster decision-making.
- Automation facilitates scalability and consistency, allowing the data pipeline to handle growing data volumes efficiently.

---

## Collaborators / Team members
| Name                        | Student ID | GitHub Username                                 |
|-----------------------------|------------|--------------------------------------------------|
| Selmah Tzindori             | 669602     | [@SelmahT](https://github.com/SelmahT)           |
| Levin Ekuam                 | 669913     | [@LEVIN0](https://github.com/LEVIN0)             |
| Hana Hailemariam Gashaw    | 670555     | [@ibtj21](https://github.com/ibtj21)             |
| Ted Korir                  | 670340     | [@tk2814](https://github.com/tk2814)             |
| Trizah Nzioka              | 670074     | [@Trizah250000](https://github.com/Trizah250000) |
| Angela Irungu              | 669289     | [@Irungu05](https://github.com/Irungu05)         |

---

## License
This project is licensed under the [MIT License](LICENSE).  
You are free to use, modify, and distribute this project with proper attribution.
