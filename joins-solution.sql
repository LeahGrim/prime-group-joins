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

