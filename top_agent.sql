-- Which sales agent made the most in sales over all?

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
	GROUP by e.EmployeeId) as amountsum;