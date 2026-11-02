# Data Dictionary – Retail & Supply Chain Control Tower

## 1. Inventory Dataset

Stores product stock information across warehouses.

| Column | Description |
|---|---|
| inventory_id | Unique identifier for each inventory record |
| product_id | Unique product identifier |
| product_name | Name of the product |
| warehouse_id | Identifier of the warehouse |
| stock_quantity | Current available stock quantity |
| reorder_level | Minimum stock level before replenishment is required |
| last_updated | Date and time of the latest inventory update |

## 2. Suppliers Dataset

Contains supplier details and performance information.

| Column | Description |
|---|---|
| supplier_id | Unique supplier identifier |
| supplier_name | Name of the supplier |
| lead_time_days | Average supplier delivery lead time in days |
| reliability_score | Supplier reliability score |
| contact_email | Supplier contact email address |

## 3. Shipments Dataset

Tracks shipment details and delivery performance.

| Column | Description |
|---|---|
| shipment_id | Unique shipment identifier |
| supplier_id | Identifier of the supplier handling the shipment |
| product_id | Identifier of the shipped product |
| order_date | Date when the shipment was ordered |
| expected_delivery_date | Scheduled delivery date |
| actual_delivery_date | Actual shipment delivery date |
| shipment_status | Current shipment delivery status |
| quantity | Quantity of products included in the shipment |

## 4. Product Demand Dataset

Contains historical product demand information.

| Column | Description |
|---|---|
| demand_date | Date of the demand record |
| product_id | Identifier of the product |
| units_sold | Number of units sold on that date |

## Data Sources

- Data is synthetically generated using Python.
- CSV files are used as the source data files.
- PostgreSQL stores the project datasets for SQL analysis and dashboard integration.

## Database Information

- Database: `retail_supply_chain`
- Schema: `public`
- Tables: `inventory`, `suppliers`, `shipments`, `product_demand`

