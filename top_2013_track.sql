-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

SELECT MAX(amountsum), amountsum.Name
FROM (SELECT
		t.Name,
		SUM(i.Total) as amountsum
	FROM Track t 
	JOIN InvoiceLine il 
	ON t.TrackId = il.TrackId
	JOIN Invoice i 
	ON il.InvoiceId = i.InvoiceId
	WHERE i.InvoiceDate between '2013-01-01' and '2013-12-31'
	GROUP BY t.TrackId) as amountsum;