SELECT genre, COUNT(bands) as number_of_bands FROM bands GROUP BY genre;
(SELECT COUNT(track_name) FROM tracks GROUP BY album_name ORDER BY COUNT LIMIT 1);

SELECT track_name FROM albums A FULL OUTER JOIN tracks B
ON A.album_name = B.album_name WHERE release_year IN (2019, 2020);

SELECT A.album_name, AVG(duration) FROM albums A FULL OUTER JOIN tracks B
ON A.album_name = B.album_name GROUP BY A.album_name;

SELECT A.bands_name FROM albums A FULL OUTER JOIN bands B
ON A.bands_name = B.bands_name WHERE release_year != 2020;

SELECT DISTINCT c.mixtape_name FROM mixtapes AS c
LEFT JOIN bands AS a ON c.id = a.id
WHERE a.id = 7;

SELECT DISTINCT a.album_name FROM albums AS a
LEFT JOIN bands_album AS ba ON a.id = ba.id
LEFT JOIN bands_genre AS bg ON ba.id = bg.band_id
GROUP BY a.album_name
HAVING COUNT(bg.band_id) > 1;

SELECT t.track_name FROM tracks AS t
LEFT JOIN mixtape_album_track AS mat ON t.id = mat.track_id
WHERE mat.track_id IS NULL;

SELECT bands_name FROM albums A FULL OUTER JOIN(
SELECT * FROM tracks A FULL OUTER JOIN (SELECT MIN(duration) FROM tracks) B ON A.duration = B.min WHERE MIN IS NOT NULL) B 
ON A.album_name = B.album_name WHERE B.album_name IS NOT NULL;

SELECT album_name FROM tracks GROUP BY album_name HAVING COUNT(track_name) =
(SELECT COUNT(track_name) FROM tracks GROUP BY album_name ORDER BY COUNT LIMIT 1);