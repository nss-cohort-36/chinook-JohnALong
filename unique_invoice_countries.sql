-- unique/distinct list of billing countries from invoice table - 
-- for future reference link to info is https://www.sqlitetutorial.net/sqlite-select-distinct

SELECT DISTINCT i.BillingCountry
FROM Invoice i 
ORDER BY i.BillingCountry;