# DSA2040_PROJECT_2 : OLTP + OLAP Integration
## Table of Contents
- [Project Descreption](#project-descreption)  
- [Objective](#objective)  
- [Tools](#tools)  
- [Repository Contents](#repository-contents)
- [How to Use](#how-to-use)
- [Reflection & Discussion](#reflection--discussion)  
- [Collaborators / Team members](#collaborators--team-members)  
- [License](#license)

### Project Description
- This project simulates a real-world retail business scenario by integrating OLTP (Online Transaction Processing) and OLAP (Online Analytical Processing) systems. The project demonstrates core data engineering and warehousing concepts such as data modeling, transformation, and aggregation.
The project also includes the implementation of an ETL (Extract, Transform, Load) pipeline to migrate and transform transactional data from the OLTP environment into the OLAP schema.
---

### Objective
- **Design a normalized OLTP schema** to capture real-time transactional data such as customer purchases, product details, and store information.
- **Develop a denormalized OLAP star schema** to enable efficient data analysis and reporting.
- **Implement an ETL (Extract, Transform, Load) process** to move and transform data from the OLTP system to the OLAP data warehouse.
- **Run analytical queries** on the OLAP system to generate insights such as monthly revenue trends and top-selling products.
- **Demonstrate the importance of separating operational and analytical systems** for better performance, scalability, and decision-making.

---

### Tools 
- DBMS: **Microsoft SQL Server**
- SQL Client: Microsoft SQL Server Management Studio 
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

Follow these steps to set up and run the OLTP + OLAP Integration project:

1. **Set Up the Environment**
   - Install and launch **Microsoft SQL Server Management Studio (SSMS)**.
   - Connect to your SQL Server instance using SSMS.

2. **Initialize the OLTP System**
   - Create a new database for the OLTP system.
   - Run `OLTP_schema.sql` (located in the `SQL_scripts/` folder) to create the normalized OLTP tables.
   - Execute `Data_simulation.sql` to populate the OLTP tables with sample transactional data.

3. **Set Up the Online Analytical Processing (OLAP) Data Warehouse**
   - Create a new database for the OLAP system (star schema).
   - Run `OLAP_schema.sql` to create dimension and fact tables for the data warehouse.

4. **Perform ETL (Extract, Transform, Load)**
   - Run `Populating_dimension_tables.sql` to populate the dimension tables from the OLTP data.
   - Then run `Populating_fact_table.sql` to load and aggregate transactional data into the `fact_sales` table.

5. **Execute Analytical Queries**
   - Navigate to the `OLAP_queries/` folder.
   - Run predefined SQL queries such as:
     - `Monthly_sales_trends.sql`
     - `Top_selling_products.sql`
   - Export the query results to the `OLAP_queries_outputs/` folder as CSV files.


## Reflection & Discussion

- *1. Why is the OLTP system normalized and the OLAP system denormalized?*
```
- **OLTP systems** are normalized to reduce data redundancy and ensure data integrity during transactional operations. This structure optimizes the speed and accuracy of inserts, updates, and deletes.
- **OLAP systems** are denormalized to simplify complex queries and improve read performance for analytical processing. Denormalization reduces the number of joins needed when querying large datasets, speeding up reporting and analysis.
```
- *2. What challenges would you face if you ran analytical queries directly on the OLTP system?*
```
- OLTP systems are optimized for transactional speed, not complex, large-scale queries, so analytical queries could cause slowdowns.
- Running heavy analytical queries on OLTP could lead to locking and blocking due to concurrent usage, negatively impacting the performance of day-to-day operations.
- OLTP databases often lack historical or aggregated data needed for trend analysis, limiting the insights you can gain.
```
- *3. How can automation (e.g., scheduled ETL jobs) help in a real-world data pipeline?*

Automation, particularly through scheduled ETL (Extract, Transform, Load) jobs, plays a critical role in enabling timely, reliable, and scalable data processing in real-world data environments.

---

 a. Timely Data Availability

Automation allows data to be extracted, transformed, and loaded at regular intervals (e.g., hourly, nightly), supporting real-time or near-real-time analytics. In modern systems, ETL jobs can run frequently (e.g., every few minutes) to keep dashboards and reports updated with fresh data. This ensures the data warehouse reflects the latest transactional activity.

---

 b. Consistency and Reliability

ETL jobs apply the same transformation logic each time they run, reducing human error. Manual data movement is prone to mistakes, but automated ETL pipelines follow predefined scripts, ensuring accuracy, consistency, and repeatability. Most automation frameworks also support logging, error handling, and alerts, enhancing reliability.

---

 c. Business Insight Generation

A key benefit of scheduled ETL automation is the ability to generate timely, data-driven insights that support strategic business decisions. Two sample analytical queries in this project —*Top Selling Products* and *Monthly Sales Trends*—illustrate how this works in practice.

#### 🔹 *Top Selling Products*

| Product           | Total Units Sold |
|-------------------|------------------|
| Sunglasses        | 6                |
| Smartphone        | 6                |
| Bluetooth Speaker | 5                |
| Backpack          | 5                |
| Running Shoes     | 4                |

This query reveals that **Sunglasses** and **Smartphones** are the top-selling products, with 6 units each. These products may be driving the bulk of customer demand during the period analyzed. The fact that Bluetooth Speakers and Backpacks follow closely suggests they are also popular and worth attention.

> **Insight:** With these results refreshed regularly through automated ETL jobs, business teams can identify emerging bestsellers early, adjust inventory levels proactively, and focus marketing efforts on trending products. This is especially crucial in fast-moving retail environments, where sales performance can change quickly.

#### 🔹 *Monthly Sales Trends*

| Month | Total Revenue |
|-------|---------------|
| 3     | 1692.47       |
| 4     | 1692.47       |
| 5     | 1692.47       |

This query shows that total revenue remained **stable across three consecutive months**. While this might suggest consistent demand, it could also indicate market saturation or missed opportunities for growth. The company might explore whether pricing, promotions, or new product launches could improve revenue.

> **Insight:** When such trends are identified early and consistently through scheduled ETL pipelines, they allow leadership to respond with timely interventions. Without automation, these insights might be delayed or missed altogether due to inconsistent manual updates.

---

 d. Reduced Load on OLTP Systems

Heavy analytical queries run directly on OLTP systems can degrade performance. Automation shifts this workload to the OLAP environment, ensuring that OLTP systems stay fast and responsive for day-to-day operations.

---

 e. Supports Scalability

As data volumes increase, automated ETL pipelines enable scalable data transformation management without additional manual effort, allowing the data warehouse to handle growing datasets and more complex trend analyses.

---

### Summary Insight

Automated ETL jobs allow organizations to continuously transform raw transactional data into meaningful, structured insights—such as identifying top-selling products like *Sunglasses* and *Smartphones* or observing consistent monthly revenue—without disrupting daily business operations.


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
