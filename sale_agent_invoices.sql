-- query excluding managers showing invoices associated with sales agent
SELECT i.InvoiceId,
	   e.FirstName,
	   e.LastName
FROM Invoice i 
JOIN Customer c  
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON c.SupportRepId = e.EmployeeId
WHERE e.Title LIKE '%sale%agent%' 	
ORDER BY i.InvoiceId ASC;