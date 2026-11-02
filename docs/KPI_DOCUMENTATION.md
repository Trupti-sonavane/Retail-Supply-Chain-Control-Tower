# KPI Documentation – Retail & Supply Chain Control Tower

This document describes the key performance indicators used to monitor inventory, supplier performance, and shipment operations.

## 1. Inventory KPIs

### Stock-Out Rate
Measures the percentage of inventory records where stock quantity is zero.

**Formula:**  
(Out-of-Stock Products / Total Products) × 100

### Low Stock Products
Counts products whose available stock is at or below the reorder level.

**Condition:**  
`stock_quantity <= reorder_level`

### Average Days of Inventory
Estimates how many days the current stock can support based on average daily product demand.

**Formula:**  
`stock_quantity / Average Daily Units Sold`

## 2. Supplier KPIs

### Average Supplier Lead Time
Measures the average number of days suppliers take to deliver products.

**Formula:**  
`AVG(lead_time_days)`

### Average Supplier Reliability
Measures the average reliability score across suppliers.

**Formula:**  
`AVG(reliability_score)`

## 3. Shipment KPIs

### On-Time Delivery Rate
Measures the percentage of delivered shipments received on or before the expected delivery date.

**Formula:**  
(On-Time Delivered Shipments / Total Delivered Shipments) × 100

### Delayed Shipments
Counts delivered shipments where the actual delivery date is later than the expected delivery date.

**Condition:**  
`actual_delivery_date > expected_delivery_date`

### Shipment Delay Rate
Measures the percentage of delivered shipments that arrived late.

**Formula:**  
(Delayed Delivered Shipments / Total Delivered Shipments) × 100

### Average Shipment Delay
Measures the average number of days by which delayed shipments exceeded their expected delivery dates.

**Formula:**  
`AVG(actual_delivery_date - expected_delivery_date)` for delayed shipments.

## KPI Usage

These KPIs help identify inventory shortages, evaluate supplier performance, monitor shipment delays, and support operational decision-making.

**Note:** KPI calculations should use the same filters and denominator definitions as the corresponding SQL queries and dashboard charts.

