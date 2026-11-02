-- Illustrative PostgreSQL queries; adapt table/column names to actual schema.
-- Read-only portfolio examples, not executed against production.
-- 1. Latest orders
SELECT id, customer_id, status, total_amount FROM orders ORDER BY created_at DESC LIMIT 10;
-- 2. Orders with customer names
SELECT o.id, c.name, o.status FROM orders o JOIN customers c ON c.id = o.customer_id;
-- 3. Order line totals
SELECT order_id, SUM(quantity * unit_price) AS subtotal FROM order_items GROUP BY order_id;
-- 4. Orders without line items
SELECT o.id FROM orders o LEFT JOIN order_items i ON i.order_id = o.id WHERE i.order_id IS NULL;
-- 5. Negative inventory
SELECT id, stock_quantity FROM products WHERE stock_quantity < 0;
-- 6. Out-of-stock products
SELECT id, name FROM products WHERE stock_quantity = 0;
-- 7. Duplicate payment references
SELECT provider_reference, COUNT(*) FROM payments GROUP BY provider_reference HAVING COUNT(*) > 1;
-- 8. Paid orders without successful payment
SELECT o.id FROM orders o LEFT JOIN payments p ON p.order_id = o.id AND p.status = 'success' WHERE o.status = 'paid' AND p.id IS NULL;
-- 9. Orders by status
SELECT status, COUNT(*) FROM orders GROUP BY status ORDER BY COUNT(*) DESC;
-- 10. Order total consistency (illustrative; excludes taxes, discounts and shipping)
SELECT o.id, o.total_amount, SUM(i.quantity * i.unit_price) AS line_total
FROM orders o JOIN order_items i ON i.order_id = o.id
GROUP BY o.id, o.total_amount
HAVING o.total_amount <> SUM(i.quantity * i.unit_price);
