# Retail & Supply Chain Control Tower

## Project Overview

The **Retail & Supply Chain Control Tower** is an end-to-end data analytics project designed to monitor inventory levels, supplier performance, and shipment operations through a centralized dashboard.

The project uses SQL and Python for data processing and analysis, PostgreSQL for data storage, and Apache Superset for interactive data visualization. It helps identify low-stock products, monitor shipment delays, evaluate supplier performance, and support data-driven supply chain decisions.

## Objectives

- Monitor inventory levels and identify low-stock products.
- Track stock-out rates and inventory availability.
- Analyze supplier lead times and reliability.
- Monitor shipment statuses and delivery delays.
- Build an interactive dashboard for operational insights.
- Evaluate data quality and validate key performance indicators (KPIs).

## Technologies Used

- **PostgreSQL** – Database management and SQL analysis
- **SQL** – Data querying, aggregation, KPI calculations, and validation
- **Python** – Data generation, processing, and analysis
- **Pandas** – Data manipulation and analysis
- **Apache Superset** – Interactive dashboards and data visualization
- **Docker** – Running Apache Superset locally
- **GitHub** – Project version control and documentation

## Dataset

The project uses simulated retail and supply chain data consisting of four datasets:

1. **Inventory** – Product stock levels, warehouse details, and reorder levels.
2. **Suppliers** – Supplier information, lead times, and reliability scores.
3. **Shipments** – Shipment details, expected delivery dates, actual delivery dates, and shipment statuses.
4. **Product Demand** – Product demand information for analysis.

## Key Performance Indicators (KPIs)

The dashboard includes the following metrics:

- Stock-Out Rate
- On-Time Delivery Rate
- Average Supplier Lead Time
- Average Days of Inventory
- Delayed Shipments
- Low Stock Products
- Shipment Delay Rate
- Average Shipment Delay (Days)

## Dashboard Features

- Inventory monitoring across warehouses.
- Identification of products below reorder levels.
- Supplier lead-time comparison.
- Supplier reliability analysis.
- Product-wise shipment status analysis.
- Shipment delay monitoring.
- Centralized interactive dashboard for supply chain performance.

## Project Workflow

1. Generated simulated retail and supply chain datasets.
2. Imported datasets into PostgreSQL.
3. Performed SQL-based data analysis and KPI calculations.
4. Used Python and Pandas for data processing and analysis.
5. Created visualizations and KPI charts in Apache Superset.
6. Developed an interactive Retail & Supply Chain Control Tower dashboard.
7. Worked on testing, validation, and project documentation.
   
## Demand Forecasting – Prophet

- Implemented time-series demand forecasting using Facebook Prophet.
- Forecasted product demand for the next 7 days.
- Evaluated model performance using MAE and RMSE.
- Saved forecast results in `prophet_forecast.csv`.
  
## Project Status

**Dashboard Development: Completed**

Testing, validation, and project documentation are being finalized.

## Learning Outcomes

- Practical experience with PostgreSQL and SQL analytics.
- Understanding of inventory and supply chain KPIs.
- Data processing using Python and Pandas.
- Dashboard development using Apache Superset.
- Data validation and business performance analysis.

