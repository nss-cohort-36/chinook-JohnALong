-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT
	e.FirstName,
	e.LastName,
	COUNT(c.CustomerId)
FROM Employee e 
JOIN Customer c 
ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId;