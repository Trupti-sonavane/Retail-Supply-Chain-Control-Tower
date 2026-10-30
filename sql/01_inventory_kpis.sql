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
