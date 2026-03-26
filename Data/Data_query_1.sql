SELECT 
    DATE(O.order_purchase_timestamp) AS fecha,
    SUM(OI.price) AS ingresos_diarios,
    COUNT(DISTINCT O.order_id) AS cantidad_pedidos
FROM olist_orders AS O
JOIN olist_order_items AS OI ON O.order_id = OI.order_id
WHERE O.order_status = 'delivered'
GROUP BY fecha
ORDER BY fecha;