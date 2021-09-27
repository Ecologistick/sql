--Удаление таблиц--
DROP TABLE IF EXISTS bands, albums, tracks, genres, bands_genre, bands_album, mixtape_album_track, mixtapes cascade;

create table bands(
    id int primary key,
    band_name text);
    
create table genres(
    id int primary key, 
    genre_name text);

create table albums(
    id int primary key,
    album_name text,
    release_date text);
    
create table tracks (
    id int primary key,
    album_id int references albums(id),
    track_name text,
    track_time text);
    
create table mixtapes(
    id int primary key,
    mixtape_name text,
    release_date int);
    
create table bands_genre(
    id int primary key,
    artist_id int references bands(id),
    genre_id int references genres(id));
                    
create table bands_album(
    id int primary key,
    band_id int references bands(id),
    album_id int references albums(id));
                            
create table mixtape_album_track(
    id int primary key,
    collection_id int references mixtapes(id),
    album_id int references albums(id),
    track_id int references tracks(id));