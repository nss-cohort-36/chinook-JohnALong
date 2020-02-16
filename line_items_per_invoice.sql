-- count of # of line items for each invoice using group by

SELECT
	i.InvoiceLineId, 
	COUNT()
FROM InvoiceLine i 
GROUP BY i.InvoiceId;
