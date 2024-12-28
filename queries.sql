-- Cantidad total de interacciones por cliente
SELECT 
    c.client_name,
    COUNT(i.interaction_id) AS total_interactions
FROM 
    clients c
LEFT JOIN 
    interactions i 
ON 
    c.client_id = i.client_id
GROUP BY 
    c.client_name;

-- Total de ventas por cliente
SELECT 
    c.client_name,
    SUM(s.sale_amount) AS total_sales
FROM 
    clients c
LEFT JOIN 
    sales s 
ON 
    c.client_id = s.client_id
GROUP BY 
    c.client_name;

-- Total de ventas por industria
SELECT 
    c.industry,
    SUM(s.sale_amount) AS total_sales
FROM 
    clients c
LEFT JOIN 
    sales s 
ON 
    c.client_id = s.client_id
GROUP BY 
    c.industry;

-- Reemplaza 'John Doe' con el nombre del cliente deseado
SELECT 
    c.client_name,
    i.date AS interaction_date,
    i.interaction_type,
    s.sale_date,
    s.sale_amount
FROM 
    clients c
LEFT JOIN 
    interactions i 
ON 
    c.client_id = i.client_id
LEFT JOIN 
    sales s 
ON 
    c.client_id = s.client_id
WHERE 
    c.client_name = 'John Doe';

-- Determinar el promedio mensual de ventas y compararlo con el mes anterior
SELECT 
    DATE_TRUNC('month', s.sale_date) AS sale_month,
    AVG(s.sale_amount) AS average_sales,
    LAG(AVG(s.sale_amount)) OVER (ORDER BY DATE_TRUNC('month', s.sale_date)) AS previous_month_average
FROM 
    sales s
GROUP BY 
    DATE_TRUNC('month', s.sale_date)
ORDER BY 
    sale_month;

-- Utilizar JOINs para combinar datos de clients, interactions, y sales y mostrar un resumen
SELECT 
    c.client_name,
    c.industry,
    COUNT(i.interaction_id) AS total_interactions,
    COUNT(s.sale_id) AS total_sales,
    SUM(s.sale_amount) AS total_sales_amount
FROM 
    clients c
LEFT JOIN 
    interactions i 
ON 
    c.client_id = i.client_id
LEFT JOIN 
    sales s 
ON 
    c.client_id = s.client_id
GROUP BY 
    c.client_name, c.industry
ORDER BY 
    total_sales_amount DESC;


