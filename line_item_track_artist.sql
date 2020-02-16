-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT
	i.InvoiceLineId,
	t.Name 'track name',
	ar.name 'artist name'
FROM InvoiceLine i 
JOIN Track t
ON i.TrackId = t.TrackId
JOIN Album a 
ON t.AlbumId = a.AlbumId
JOIN Artist ar 
on a.ArtistId = ar.ArtistId
ORDER BY i.InvoiceLineId ASC;