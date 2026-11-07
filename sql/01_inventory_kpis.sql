-- Retail & Supply Chain Control Tower
-- Inventory KPI Analysis

-- 1. Inventory overview
SELECT
    COUNT(DISTINCT product_id) AS total_products,
    COUNT(*) AS total_inventory_records,
    SUM(stock_quantity) AS total_stock_units
FROM public.inventory;


-- 2. Out-of-stock inventory records
SELECT
    COUNT(*) AS out_of_stock_records
FROM public.inventory
WHERE stock_quantity = 0;


-- 3. Low-stock inventory records
SELECT
    COUNT(*) AS low_stock_records
FROM public.inventory
WHERE stock_quantity <= reorder_level;


-- 4. Low-stock products by warehouse
SELECT
    product_id,
    product_name,
    warehouse_id,
    stock_quantity,
    reorder_level,
    reorder_level - stock_quantity AS units_below_reorder
FROM public.inventory
WHERE stock_quantity <= reorder_level
ORDER BY units_below_reorder DESC;


-- 5. Inventory stock by warehouse
SELECT
    warehouse_id,
    SUM(stock_quantity) AS total_stock
FROM public.inventory
GROUP BY warehouse_id
ORDER BY total_stock DESC;

--6. Days of inventory

WITH demand_summary AS (
    SELECT
        product_id,
        AVG(units_sold) AS avg_daily_demand
    FROM product_demand
    GROUP BY product_id
),
inventory_days AS (
    SELECT
        i.product_id,
        i.stock_quantity,
        d.avg_daily_demand,
        CASE
            WHEN d.avg_daily_demand > 0
            THEN i.stock_quantity / d.avg_daily_demand
            ELSE NULL
        END AS days_of_inventory
    FROM inventory i
    JOIN demand_summary d
        ON i.product_id = d.product_id
)
SELECT
    COUNT(*) AS products_analyzed,
    ROUND(AVG(days_of_inventory), 2) AS avg_days_of_inventory,
    ROUND(MIN(days_of_inventory), 2) AS min_days_of_inventory,
    ROUND(MAX(days_of_inventory), 2) AS max_days_of_inventory
FROM inventory_days;

--7. Product wise stock calculation
SELECT
    product_id,
    product_name,
    warehouse_id,
    stock_quantity,
    reorder_level,
    reorder_level - stock_quantity AS units_below_reorder
FROM inventory
WHERE stock_quantity <= reorder_level
ORDER BY units_below_reorder DESC;
