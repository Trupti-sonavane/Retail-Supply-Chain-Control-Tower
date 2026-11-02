# KPI & SQL Analysis Documentation
## Retail & Supply Chain Control Tower

This document describes the SQL analyses implemented to monitor inventory, supplier performance, and shipment operations using PostgreSQL.

## 1. Inventory KPI Analysis

**SQL File:** `inventory_kpi.sql`

### 1.1 Inventory Overview
Provides a summary of inventory data.

- Total Products
- Total Inventory Records
- Total Stock Units

### 1.2 Out-of-Stock Inventory Records
Counts inventory records where available stock is zero.

**Condition:** `stock_quantity = 0`

### 1.3 Low-Stock Inventory Records
Identifies inventory records where stock quantity is at or below the reorder level.

**Condition:** `stock_quantity <= reorder_level`

### 1.4 Low-Stock Products by Warehouse
Displays products requiring replenishment, including:

- Product ID and Product Name
- Warehouse ID
- Current Stock Quantity
- Reorder Level
- Units Below Reorder Level

### 1.5 Inventory Stock by Warehouse
Calculates total available stock for each warehouse and ranks warehouses by stock quantity.

**Calculation:** `SUM(stock_quantity)` grouped by `warehouse_id`.

## 2. Supplier Performance Analysis

**SQL File:** `supplier_performance_kpi.sql`

### 2.1 Supplier Overview
Provides an overall summary of supplier performance.

- Total Suppliers
- Average Supplier Lead Time (Days)
- Average Supplier Reliability Score

### 2.2 Supplier-wise Performance
Displays individual supplier details, lead times, and reliability scores.

Suppliers are ordered by lead time in descending order to identify suppliers with longer delivery times.

### 2.3 Suppliers Ranked by Reliability
Ranks suppliers based on their reliability scores in descending order.

Higher reliability scores appear first.

## 3. Shipment Status Analysis

**SQL File:** `shipments_status.sql`

### 3.1 Shipment Overview
Provides an overall shipment summary.

- Total Shipments
- Delayed Shipments
- On-Time Shipments

### 3.2 Shipment Delay Rate
Calculates the percentage of shipments classified as delayed.

**Formula:**

(Delayed Shipments / Total Shipments) × 100

### 3.3 Average Shipment Delay
Calculates the average number of days by which delayed shipments exceeded their expected delivery dates.

**Calculation:** Average of `actual_delivery_date - expected_delivery_date` for shipments with status `Delayed`.

### 3.4 Product-wise Shipment Status
Groups shipments by product and shipment status to analyze delivery performance across products.

## 4. SQL Technologies and Techniques

- PostgreSQL
- Aggregate Functions: `COUNT()`, `SUM()`, `AVG()`
- Conditional Aggregation: `FILTER (WHERE ...)`
- Grouping: `GROUP BY`
- Sorting: `ORDER BY`
- Null Handling: `NULLIF()`
- Numeric Formatting: `ROUND()`
- Date Arithmetic

## 5. Important Notes

The current SQL implementation includes 12 analyses across three categories:

- Inventory Analysis: 5 queries
- Supplier Performance Analysis: 3 queries
- Shipment Analysis: 4 queries

The following metrics are not independently calculated in these three SQL files:

- Stock-Out Rate (%)
- Average Days of Inventory
- On-Time Delivery Rate (%)

These metrics should only be marked as implemented after their corresponding SQL calculations are added and validated.

## 6. Business Value

These SQL analyses help:

- Monitor inventory availability and replenishment requirements.
- Identify warehouses with higher or lower stock levels.
- Compare supplier lead times and reliability.
- Track delayed shipments and shipment performance.
- Understand product-wise shipment status.
- Support data-driven retail and supply chain decisions.
