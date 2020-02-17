-- Provide a query that shows the total sales per country.

-- total sales by billing country
SELECT
	i.BillingCountry,
	SUM(i.Total)
FROM Invoice i 
GROUP BY i.BillingCountry;

-- total sales by customer country
SELECT
	c.Country,
	SUM(i.Total)
FROM Invoice i 
JOIN Customer c 
ON i.CustomerId = c.CustomerId
GROUP BY c.Country;

