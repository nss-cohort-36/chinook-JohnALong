SELECT
	c.CustomerId,
	c.FirstName,
	c.LastName,
	c.Country
FROM Customer c 
WHERE c.Country in ('Brazil');