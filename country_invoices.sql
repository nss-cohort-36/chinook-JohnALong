-- query to show # of invoices by country (showed both customer and billing coungry)

SELECT 
	COUNT() 'byCountry',
	i.BillingCountry,
	c.Country 'customerCountry'
FROM Invoice i 
JOIN Customer c 
ON i.CustomerId = c.CustomerId
GROUP BY c.Country;

