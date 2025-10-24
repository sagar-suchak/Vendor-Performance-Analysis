![Python](https://img.shields.io/badge/Python-3.11-blue)
![License: MIT](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Project%20Status-Completed-success)


📊 **Vendor Performance Analysis**

🧩 Project Overview
The Vendor Performance Analysis project delivers actionable insights on vendor purchases, sales, and profitability using real transactional data in a SQLite database.
It automates raw data ingestion, cleansing, transformation, and builds vendor-level summaries with visual analytics (Pareto charts, profit metrics, and contribution analysis).

This project demonstrates strong proficiency in:

- Data wrangling & cleaning
- SQL integration
- Python automation
- Feature engineering
- Visual analytics with Matplotlib/Seaborn

Ideal for Data Analyst or Data Science roles.

🚀 **Approach**
1. Data Ingestion
  - Raw vendor data (purchases, sales, invoices) is loaded into a SQLite database using a flexible Python pipeline (ingestion_db.py).

2. Data Transformation & Integration

  - Utilizes SQL joins and aggregations across multiple tables (e.g., purchases, sales, vendor_invoice).
  - Produces a cleaned, aggregated summary (vendor_sales_summary) via SQL queries (get_vendor_summary.py).

3. Feature Engineering

  - Handles missing values and standardizes columns.
  - Calculates advanced metrics:
    - Gross Profit
    - Profit Margin (%)
    - Stock Turnover (%)
    - Sales-to-Purchase Ratio (%)
    - Unit Purchase Price ($)
    - Order Size(Small, Med, Large)
    - Unsold Inventory Value ($)
 
4. Exploratory Analysis & Visualization
  - Jupyter notebook (vendor_performance_analysis.ipynb) demonstrates:
    - Vendor-wise trends
    - Top vendor contribution (Pareto analysis)
    - Visual summaries (Matplotlib, Seaborn)
   
| File/Folder                      | Purpose                                          |
|:---------------------------------|:----------------------------------------------------|
| ingestion_db.py                  | Python script for loading raw CSVs into SQLite DB   |
| get_vendor_summary.py            | Data cleaning, SQL summary, feature engineering     |
| vendor_performance_analysis.ipynb| Main notebook for EDA, plots, and KPI analysis      |
| README.md                        | Project overview, installation, instructions        |
| requirements.txt                 | Python dependencies                                 |


🛠 **Dependencies**

- pandas
- numpy
- matplotlib
- seaborn
- sqlalchemy
- scipy

⚡ **Installation & Usage**
1. Clone the repository

`git clone https://github.com/sagar-suchak/vendor-performance-analysis.git`

`cd vendor-performance-analysis`

3. Install dependencies

`pip install -r requirements.txt`

3. Run the pipeline

`python ingestion_db.py`

`python get_vendor_summary.py`


**Visualisation:**


<img width="750" height="500" alt="image" src="https://github.com/user-attachments/assets/4026ec64-85f6-4d24-b2f3-1759436d550c" />


<img width="750" height="500" alt="image" src="https://github.com/user-attachments/assets/657a7d1b-904c-4ae9-a4ea-0c7d9d5f2f14" />



 
