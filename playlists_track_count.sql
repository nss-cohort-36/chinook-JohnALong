-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table. - why does group by change results?

SELECT 
	count(pt.TrackId),
	p.Name
FROM Playlist p 
JOIN PlaylistTrack pt  
ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name;
