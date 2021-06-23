--Удаление таблиц--
DROP TABLE IF EXISTS bands, albums, tracks, genres, b_genres, b_albums, mixtapes, t_mixtapes cascade;

CREATE TABLE genres(
		genre_name text PRIMARY KEY
);

CREATE TABLE bands(
		bands_name text PRIMARY KEY ,
		genre text REFERENCES genres(genre_name)
);

create table b_genres(
		bands text REFERENCES bands(bands_name),
		genre_name text REFERENCES genres(genre_name),
		PRIMARY KEY(bands, genre_name)
);

CREATE TABLE albums(
		album_name text PRIMARY KEY,
		release_year int,
		bands_name text REFERENCES bands(bands_name)
);

CREATE TABLE tracks(
		track_name text PRIMARY KEY,
		duration real,
		album_name text	REFERENCES albums(album_name)
);

CREATE TABLE b_albums(
		bands text REFERENCES bands(bands_name),
		album_name text REFERENCES albums(album_name),
		PRIMARY KEY(bands, album_name)
);

CREATE TABLE mixtapes(
		mixtape_name text PRIMARY KEY,
		release_year int
);

CREATE TABLE t_mixtapes(
		track_name text REFERENCES tracks(track_name),
		mixtape_name text REFERENCES mixtapes(mixtape_name),
		PRIMARY KEY(track_name, mixtape_name)
);
