## ETL Pipeline for Olist E-commerce Data Using Azure

### Overview
This project demonstrates the creation of an ETL pipeline using Azure services to process and analyze the Olist E-commerce dataset. The pipeline extracts raw data from Azure Data Lake, transforms it using Databricks, and loads it into Azure SQL Database for analysis and reporting.

### Key Features
- **Data Cleaning & Transformation**: Handled missing values, duplicates, and standardizations.
- **Calculated Columns**: Created columns like total price, delivery time, payment count, and profit margin.
- **Window Functions**: Applied running totals and rolling averages for customer sales and delivery times.
- **SQL Database**: Loaded processed data into Azure SQL Database, split into fact and dimension tables.

### Project Steps
1. **Azure Data Lake**: Store raw CSV files.
2. **Databricks**: Process and transform data.
3. **Azure SQL Database**: Store the final cleaned tables.

### Future Enhancements
- Implement **SCD Type 2**, **CDC**, and **historization** using SQL procedures.

### Files Included
- **Python Notebooks**: For data cleaning, transformations, and loading data into SQL.
- **SQL Scripts**: For creating tables and validating data in Azure SQL Database.

### Full Documentation
For detailed instructions, code explanations, and project structure, please refer to the [Full Documentation PDF](doc.pdf).
