-- Which sales agent made the most in sales in 2009?

SELECT max(amountsum), amountsum.FirstName, amountsum.LastName
from (SELECT
		e.FirstName,
		e.LastName,
		ROUND(SUM(i.Total), 2) as amountsum
	FROM Employee e 
	JOIN Customer c 
	on e.EmployeeId = c.SupportRepId
	JOIN Invoice i 
	on c.CustomerId = i.CustomerId
	WHERE i.InvoiceDate BETWEEN '2009-01-01' and '2009-12-31'
	GROUP by e.EmployeeId) as amountsum;