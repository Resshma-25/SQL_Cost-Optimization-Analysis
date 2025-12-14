
-- Department-wise Total Cost
SELECT p.department, SUM(c.cost) AS total_cost
FROM products p
JOIN costs c ON p.product_id = c.product_id
GROUP BY p.department;

-- High-Cost Products
SELECT p.product_name, c.cost
FROM products p
JOIN costs c ON p.product_id = c.product_id
WHERE c.cost > (SELECT AVG(cost) FROM costs);
