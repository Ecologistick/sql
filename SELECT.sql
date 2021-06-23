SELECT genre, COUNT(bands) as number_of_bands FROM bands GROUP BY genre;

SELECT track_name FROM albums A FULL OUTER JOIN tracks B
ON A.album_name = B.album_name WHERE release_year IN (2019, 2020);

SELECT A.album_name, AVG(duration) FROM albums A FULL OUTER JOIN tracks B
ON A.album_name = B.album_name GROUP BY A.album_name;

SELECT A.bands_name FROM albums A FULL OUTER JOIN bands B
ON A.bands_name = B.bands_name WHERE release_year != 2020;

SELECT B.mixtape_name FROM albums A FULL OUTER JOIN (SELECT * FROM tracks A FULL OUTER JOIN t_mixtapes B
ON A.track_name = B.track_name) B ON A.album_name = B.album_name WHERE bands_name = 'Eminem';

SELECT track_name FROM albums A FULL OUTER JOIN (SELECT A.track_name, album_name, mixtape_name FROM tracks A FULL OUTER JOIN t_mixtapes B
ON A.track_name = B.track_name) B ON A.album_name = B.album_name WHERE mixtape_name IS NULL;

SELECT bands_name FROM albums A FULL OUTER JOIN(
SELECT * FROM tracks A FULL OUTER JOIN (SELECT MIN(duration) FROM tracks) B ON A.duration = B.min WHERE MIN IS NOT NULL) B 
ON A.album_name = B.album_name WHERE B.album_name IS NOT NULL;

SELECT album_name FROM tracks GROUP BY album_name HAVING COUNT(track_name) = 
(SELECT COUNT(track_name) FROM tracks GROUP BY album_name ORDER BY COUNT LIMIT 1);