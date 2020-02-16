-- total sales for years 2009 and 20011
-- 2009
SELECT SUM(Total)
FROM Invoice i 
WHERE i.InvoiceDate BETWEEN '2009-01-01' and '2009-12-31';

-- 2011
SELECT SUM(Total)
FROM Invoice i 
WHERE i.InvoiceDate BETWEEN '2011-01-01' and '2011-12-31';