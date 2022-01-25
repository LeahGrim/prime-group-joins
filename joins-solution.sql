-- where we will store our responses 
--(1) :Get all customers and their addresses.
SELECT 
	"customers".id,
	"customers".first_name,
	"customers".last_name,
	"addresses".street,
	"addresses".city,
	"addresses".state,
	"addresses".zip
FROM "customers" 
JOIN "addresses" 
	ON "customers".id = "addresses".customer_id



--(2) : Get all orders and their line items (orders, quantity and product).

SELECT 
	"line_items".quantity,
	"line_items".order_id,
	"line_items".product_id,
	"orders".order_date,
	"orders".address_id
FROM "orders"
JOIN "line_items"
ON "orders".id= "line_items".order_id


--(3) Which warehouses have cheetos?
SELECT *
FROM products
JOIN warehouse_product
ON "warehouse_product".product_id = "products".id
JOIN warehouse
ON "warehouse".id = "warehouse_product"."warehouse_id"
WHERE description = 'cheetos'

--(4) 
