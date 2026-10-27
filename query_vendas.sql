SELECT 
   cliente.country,
    COUNT(item.product_id) AS total_itens_entregue,
    ROUND(SUM(item.sale_price), 2) AS faturamento_total,
    ROUND(AVG(item.sale_price), 2) AS ticket_medio
FROM bigquery-public-data.thelook_ecommerce.users AS cliente
INNER JOIN bigquery-public-data.thelook_ecommerce.order_items as item
ON cliente.id = item.user_id
WHERE status = 'Complete'
GROUP BY 1
HAVING SUM(item.sale_price) > 500000
ORDER BY faturamento_total DESC;
