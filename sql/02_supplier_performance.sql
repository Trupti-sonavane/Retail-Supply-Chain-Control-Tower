-- Retail & Supply Chain Control Tower
-- Supplier Performance Analysis

-- 1. Supplier overview
SELECT
    COUNT(*) AS total_suppliers,
    ROUND(AVG(lead_time_days), 2) AS avg_lead_time_days,
    ROUND(AVG(reliability_score), 2) AS avg_reliability_score
FROM public.suppliers;


-- 2. Supplier-wise performance
SELECT
    supplier_id,
    supplier_name,
    lead_time_days,
    reliability_score
FROM public.suppliers
ORDER BY lead_time_days DESC;


-- 3. Suppliers ranked by reliability
SELECT
    supplier_id,
    supplier_name,
    reliability_score,
    lead_time_days
FROM public.suppliers
ORDER BY reliability_score DESC;
