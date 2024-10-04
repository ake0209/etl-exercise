###H2 ETL Pipeline for Olist E-commerce Data Using Azure

### H3Overview
This project demonstrates the creation of an ETL pipeline using Azure services to process and analyze the Olist E-commerce dataset. The pipeline extracts raw data from Azure Data Lake, transforms it using Databricks, and loads it into Azure SQL Database for analysis and reporting.

### H3 Key Features
Data Cleaning & Transformation: Handled missing values, duplicates, and standardizations.
Calculated Columns: Created columns like total price, delivery time, payment count, and profit margin.
Window Functions: Applied running totals and rolling averages for customer sales and delivery times.
SQL Database: Loaded processed data into Azure SQL Database, split into fact and dimension tables.

### H3 Project Steps
Azure Data Lake: Store raw CSV files.
Databricks: Process and transform data.
Azure SQL Database: Store the final cleaned tables.

### H3 Future Enhancements: 
Implement SCD Type 2, CDC, and historization using SQL procedures.

### H3 Files Included
Python Notebooks: For data cleaning, transformations, and loading data into SQL.
SQL Scripts: For creating tables and validating data in Azure SQL Database.

### H3 Full Documentation
For detailed instructions, code explanations, and project structure, please refer to the Full Documentation PDF(doc.pdf).
