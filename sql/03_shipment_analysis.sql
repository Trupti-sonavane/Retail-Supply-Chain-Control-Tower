-- Retail & Supply Chain Control Tower
-- Shipment Analysis

-- 1. Shipment overview
SELECT
    COUNT(*) AS total_shipments,
    COUNT(*) FILTER (
        WHERE shipment_status = 'Delayed'
    ) AS delayed_shipments,
    COUNT(*) FILTER (
        WHERE shipment_status = 'On-Time'
    ) AS on_time_shipments
FROM public.shipments;


-- 2. Shipment delay rate
SELECT
    ROUND(
        100.0 * COUNT(*) FILTER (
            WHERE shipment_status = 'Delayed'
        ) / NULLIF(COUNT(*), 0),
        2
    ) AS shipment_delay_rate_pct
FROM public.shipments;


-- 3. Average shipment delay in days
SELECT
    ROUND(
        AVG(actual_delivery_date - expected_delivery_date),
        2
    ) AS avg_shipment_delay_days
FROM public.shipments
WHERE shipment_status = 'Delayed';


-- 4. Product-wise shipment status
SELECT
    product_id,
    shipment_status,
    COUNT(*) AS shipment_count
FROM public.shipments
GROUP BY product_id, shipment_status
ORDER BY product_id, shipment_status;
