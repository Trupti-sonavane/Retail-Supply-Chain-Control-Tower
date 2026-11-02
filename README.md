# Retail & Supply Chain Control Tower

## Project Overview

The **Retail & Supply Chain Control Tower** is an end-to-end data analytics project designed to monitor inventory levels, supplier performance, shipment operations, and product demand through a centralized analytics solution.

The project combines SQL, Python, PostgreSQL, and Apache Superset to generate operational insights, identify supply chain issues, forecast product demand, and support data-driven business decisions.

## Objectives

- Monitor inventory levels and identify low-stock products.
- Track stock-out rates and inventory availability.
- Analyze supplier lead times and reliability.
- Monitor shipment statuses and delivery delays.
- Detect unusual product demand patterns.
- Forecast future product demand.
- Generate alerts for supply chain issues.
- Build an interactive dashboard for operational monitoring.

## Technologies Used

- **Python** – Data generation, processing, anomaly detection, and forecasting
- **Pandas** – Data manipulation and analysis
- **SQL** – Data querying, KPI calculations, and validation
- **PostgreSQL** – Relational database management
- **Apache Superset** – Interactive dashboards and visualizations
- **Prophet** – Time-series demand forecasting
- **Scikit-learn** – Machine learning and model evaluation
- **Docker** – Running Apache Superset locally
- **Slack Incoming Webhooks** – Supply chain alert notifications
  

## Dataset

The project uses simulated retail and supply chain data consisting of four datasets:

1. **Inventory** – Product stock levels, warehouse details, and reorder levels.
2. **Suppliers** – Supplier information, lead times, and reliability scores.
3. **Shipments** – Shipment details, expected and actual delivery dates, and shipment statuses.
4. **Product Demand** – Historical product demand and units sold.

## Key Performance Indicators (KPIs)

The dashboard focuses on the following metrics:

- Stock-Out Rate
- On-Time Delivery Rate
- Average Supplier Lead Time
- Average Supplier Reliability
- Average Days of Inventory
- Delayed Shipments
- Low Stock Products
- Shipment Delay Rate
- Average Shipment Delay (Days)

## Dashboard Features

- Inventory monitoring across warehouses.
- Identification of products below reorder levels.
- Supplier lead-time and reliability analysis.
- Product-wise shipment status analysis.
- Shipment delay monitoring.
- Centralized interactive dashboard for supply chain performance.

## Anomaly Detection

- Implemented demand anomaly detection using Python.
- Calculated product-wise demand z-scores.
- Identified unusual demand observations using a defined threshold.
- Saved anomaly results for further analysis.

## Demand Forecasting – Prophet

- Implemented time-series demand forecasting using Prophet.
- Forecasted product demand for the next 7 days.
- Evaluated forecasting performance using MAE and RMSE.
- Saved forecast results in `prophet_forecast.csv`.

## Model Evaluation

- Compared a baseline forecasting approach with Linear Regression.
- Evaluated model performance using Mean Absolute Error (MAE) and Root Mean Squared Error (RMSE).
- Used evaluation results to understand model performance and forecasting limitations.

## Slack Alert Integration

- Integrated Slack Incoming Webhooks with Python.
- Generated notifications for low-stock products and delayed shipments.
- Used supply chain alert data to prepare alert messages.
- Successfully tested Slack message delivery.

## Project Workflow

1. Generated simulated retail and supply chain datasets using Python.
2. Imported datasets into PostgreSQL.
3. Performed SQL-based data analysis and KPI calculations.
4. Processed and analyzed data using Python and Pandas.
5. Implemented demand anomaly detection.
6. Developed demand forecasting using Prophet.
7. Evaluated forecasting models using MAE and RMSE.
8. Generated supply chain alerts and integrated Slack notifications.
9. Created KPI visualizations and an interactive dashboard in Apache Superset.
10. Worked on testing, validation, and project documentation.

## Project Status

**Completed Components**
- Simulated dataset generation
- PostgreSQL database setup and data import
- SQL-based KPI analysis
- Anomaly detection implementation
- Prophet demand forecasting
- Slack alert integration
- Apache Superset dashboard development

**Remaining Work**
- Final testing and validation
- Hourly data refresh automation verification
- Dashboard enhancements and final review
- Architecture diagram and project documentation
- Final project presentation and individual reflection

## Learning Outcomes

- Practical experience with SQL and PostgreSQL.
- Understanding of inventory and supply chain KPIs.
- Data processing using Python and Pandas.
- Implementation of anomaly detection and time-series forecasting.
- Dashboard development using Apache Superset.
- Integration of Slack notifications using webhooks.
- Model evaluation and data validation.
