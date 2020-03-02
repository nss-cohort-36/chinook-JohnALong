-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.

SELECT amountsum, amountsum.Name
FROM (SELECT
		t.Name,
		SUM(i.Total) as amountsum
	FROM Track t 
	JOIN InvoiceLine il 
	ON t.TrackId = il.TrackId
	JOIN Invoice i 
	ON il.InvoiceId = i.InvoiceId
	GROUP BY t.TrackId) as amountsum
	ORDER BY amountsum DESC
	LIMIT 5;