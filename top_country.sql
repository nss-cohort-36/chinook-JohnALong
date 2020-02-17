-- top country in sales

SELECT MAX(amountsum), amountsum.Country
FROM (SELECT
		c.Country,
		SUM(i.Total) as amountsum
	FROM Invoice i 
	JOIN Customer c 
	ON i.CustomerId = c.CustomerId
	GROUP BY c.Country) as amountsum;	