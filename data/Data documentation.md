\# Data Documentation

\## Retail \& Supply Chain Control Tower



\### 1. Introduction



This document describes the datasets used in the Retail \& Supply Chain Control Tower project. The project uses simulated retail supply chain data to monitor inventory, suppliers, shipments, and product demand.



The datasets are generated using Python and stored as CSV files before being imported into PostgreSQL for analysis and dashboard development.



\### 2. Data Sources



The project uses four CSV datasets:



| Dataset | CSV File | Records |

|---|---|---:|

| Inventory | inventory.csv | 100 |

| Suppliers | suppliers.csv | 10 |

| Shipments | shipments.csv | 200 |

| Product Demand | product\_demand.csv | 9,000 |

| \*\*Total\*\* | \*\*4 CSV files\*\* | \*\*9,310\*\* |



\*\*Data source:\*\* Synthetically generated project data using Python.



\### 3. Dataset Description



\#### 3.1 Inventory Dataset



\*\*Purpose:\*\* Tracks product stock levels across warehouses and helps identify low-stock products.



| Column | Data Type | Description |

|---|---|---|

| product\_id | String | Unique product identifier |

| product\_name | String | Name of the product |

| warehouse\_id | String | Warehouse identifier |

| stock\_quantity | Integer | Available stock quantity |

| reorder\_level | Integer | Minimum stock threshold for replenishment |

| last\_updated | Timestamp | Date and time of the last inventory update |



\*\*Total Records:\*\* 100



\#### 3.2 Suppliers Dataset



\*\*Purpose:\*\* Stores supplier information and performance-related details.



| Column | Data Type | Description |

|---|---|---|

| supplier\_id | String | Unique supplier identifier |

| supplier\_name | String | Name of the supplier |

| lead\_time\_days | Integer | Expected supplier delivery lead time in days |

| reliability\_score | Numeric | Supplier reliability score |

| contact\_email | String | Supplier contact email address |



\*\*Total Records:\*\* 10



\#### 3.3 Shipments Dataset



\*\*Purpose:\*\* Tracks shipment orders, expected delivery dates, actual delivery dates, and shipment status.



| Column | Data Type | Description |

|---|---|---|

| shipment\_id | String | Unique shipment identifier |

| supplier\_id | String | Associated supplier identifier |

| product\_id | String | Associated product identifier |

| order\_date | Date | Shipment order date |

| expected\_delivery\_date | Date | Expected delivery date |

| actual\_delivery\_date | Date | Actual delivery date |

| shipment\_status | String | Current shipment status |

| quantity | Integer | Quantity of products in the shipment |



\*\*Total Records:\*\* 200



\#### 3.4 Product Demand Dataset



\*\*Purpose:\*\* Stores historical daily product demand and sales information for demand analysis and forecasting.



| Column | Data Type | Description |

|---|---|---|

| demand\_date | Date | Date of recorded product demand |

| product\_id | String | Associated product identifier |

| units\_sold | Integer | Number of units sold on that date |



\*\*Total Records:\*\* 9,000



\### 4. Data Relationships



The datasets are connected using common identifiers.



\- `suppliers.supplier\_id` connects with `shipments.supplier\_id`.

\- `inventory.product\_id` connects with `shipments.product\_id`.

\- `inventory.product\_id` connects with `product\_demand.product\_id`.



These relationships support combined analysis of inventory availability, supplier performance, shipment delays, and product demand.



\### 5. Data Storage



The generated CSV files are imported into PostgreSQL.



\*\*Database:\*\* PostgreSQL



\*\*Tables:\*\*

\- inventory

\- suppliers

\- shipments

\- product\_demand



The PostgreSQL inventory table also contains a database-generated `inventory\_id` column in addition to the CSV fields.



\### 6. Data Generation and Refresh



Python scripts generate simulated supply chain data and save the datasets as CSV files.



The hourly automation process:

1\. Generates updated datasets.

2\. Saves the CSV files.

3\. Imports the data into PostgreSQL.

4\. Records execution details in the automation log.



\### 7. Data Usage in the Project



| Dataset | Project Usage |

|---|---|

| Inventory | Stock monitoring and low-stock identification |

| Suppliers | Supplier performance analysis |

| Shipments | Shipment tracking and delay analysis |

| Product Demand | Demand analysis and forecasting |



These datasets provide the foundation for SQL analysis, machine learning, KPI monitoring, and supply chain dashboard reporting.



\### 8. Conclusion



The four datasets provide a structured representation of the retail supply chain. Their integration in PostgreSQL enables centralized analysis of inventory, suppliers, shipments, and product demand, supporting data-driven supply chain monitoring and decision-making.

