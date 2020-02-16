-- Provide a query that shows total sales made by each sales agent

SELECT
	e.FirstName,
	e.LastName,
	ROUND(SUM(i.Total), 2)
FROM Employee e 
JOIN Customer c 
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i 
ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId;