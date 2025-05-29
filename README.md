# DSA2040_PROJECT_2
# OLTP to OLAP Data Warehouse Project (SQL Server Edition)

This project demonstrates how to extract transactional data from an **OLTP database** and load it into a dimensional **OLAP star schema** using **Microsoft SQL Server**. The use case simulates a retail business scenario, with analysis-ready data for sales metrics.

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
