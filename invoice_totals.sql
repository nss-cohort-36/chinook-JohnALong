-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total,
	   c.FirstName 'custFirst',
	   c.LastName 'custLast',
	   c.Country,
	   e.FirstName 'empFirst',
	   e.LastName 'empLast'
FROM Invoice i 
JOIN Customer c  
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON c.SupportRepId = e.EmployeeId
WHERE e.Title LIKE '%sale%agent%' 	
ORDER BY i.Total ASC;