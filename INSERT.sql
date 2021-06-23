INSERT INTO genres(genre_name) 
	VALUES('Heavy metal'),
		  ('Pop'),
		  ('Post-Punk'),
		  ('Jazz'),
		  ('Rap'),
		  ('Metalcore')
	RETURNING * ;


INSERT INTO bands(bands_name, genre) 
	VALUES('Metallica', 'Heavy metal'),
	('Black Sabbath', 'Heavy metal'),
	('Lady Gaga', 'Pop'),
	('Michael Jackson', 'Pop'),
	('Joy Division', 'Post-Punk'),
	('Bauhaus', 'Post-Punk'),
	('Frank Sinatra', 'Jazz'),
	('Eminem','Rap'),
	('Bring Me the Horizon','Metalcore')
	RETURNING * ;

INSERT INTO b_genres(bands, genre_name) 
	VALUES('Metallica', 'Heavy metal'),
	('Black Sabbath', 'Heavy metal'),
	('Lady Gaga', 'Pop'),
	('Michael Jackson', 'Pop'),
	('Joy Division', 'Post-Punk'),
	('Bauhaus', 'Post-Punk'),
	('Frank Sinatra', 'Jazz'),
	('Eminem','Rap')
	--('Bring Me the Horizon', 'Metalcore')
	RETURNING * ;

INSERT INTO albums(album_name, release_year, bands_name)
        VALUES('Master of Puppets','1986','Metallica'),
              ('Paranoid','1970','Black Sabbath'),
              ('The Remix','2010','Lady Gaga'),
              ('Bad','1987','Michael Jackson'),
              ('Unknown Pleasures','1979','Joy Division'),
              ('Mask','1981','Bauhaus'),
              ('All Alone','1962','Frank Sinatra'),
              ('Relapse','2009','Eminem'),
              ('Post Human: Survival Horror','2020','Bring Me the Horizon')
RETURNING *;

INSERT INTO tracks(track_name, duration, album_name)
    VALUES('Battery','5.13','Master of Puppets'),
          ('Master of Puppets','8.36','Master of Puppets'),
          ('Iron Man','5.56','Paranoid'),
          ('Paranoid','2.48','Paranoid'),
          ('Paparazzi','3.21','The Remix'),
          ('Poker Face','4.03','The Remix'),
          ('Smooth Criminal','4.20','Bad'),
          ('Speed Demon','4.03','Bad'),
          ('Disorder','3.36','Unknown Pleasures'),
          ('She `s Lost Control','3.56','Unknown Pleasures'),
          ('The Passion of Lovers','3.53','Mask'),
          ('Dancing','2.29','Mask'),
          ('Charmaine','3.17','All Alone'),
          ('All Alone','2.42','All Alone'),
          ('My Darling','5.20','Relapse'),
          ('Music Box','5.05','Relapse'),
          ('Parasite Eve','4.51','Post Human: Survival Horror')
RETURNING *;

INSERT INTO b_albums(bands, album_name) 
    VALUES('Metallica', 'Master of Puppets'),
          ('Black Sabbath','Paranoid'),
          ('Lady Gaga','The Remix'),
          ('Michael Jackson','Bad'),
          ('Joy Division','Unknown Pleasures'),
          ('Bauhaus','Mask'),
          ('Frank Sinatra','All Alone'),
          ('Eminem','Relapse'),
          ('Bring Me the Horizon','Post Human: Survival Horror')
RETURNING *;

INSERT INTO mixtapes(mixtape_name, release_year)
            VALUES('First','2021'),
            ('Second','2021'),
            ('Rock and similar','2000'),
            ('Pop and similar','2009'),
            ('Jazz and similar','1970'),
            ('Seventies','1980'),
            ('Eighties','1990'),
            ('Newest','2010')
RETURNING *;
	
INSERT INTO t_mixtapes(track_name, mixtape_name)
        VALUES('Battery','First'),
              ('Iron Man','First'),
              ('Paparazzi','First'),
              ('Smooth Criminal','First'),
              ('Disorder','First'),
              ('The Passion of Lovers','First'),
              ('Charmaine','First'),
              ('My Darling','First'),
              ('Master of Puppets','Second'),
              ('Paranoid','Second'),
              ('Poker Face','Second'),
              ('Speed Demon','Second'),
              ('She `s Lost Control','Second'),
              ('Dancing','Second'),
              ('All Alone','Second'),
              ('Music Box','Second'),
              ('Battery','Rock and similar'),
              ('Master of Puppets','Rock and similar'),
              ('Iron Man','Rock and similar'),
              ('Paranoid','Rock and similar'),
              ('Disorder','Rock and similar'),
              ('She `s Lost Control','Rock and similar'),
              ('The Passion of Lovers','Rock and similar'),
              ('Dancing','Rock and similar'),
              ('Paparazzi','Pop and similar'),
              ('Poker Face','Pop and similar'),
              ('Smooth Criminal','Pop and similar'),
              ('Speed Demon','Pop and similar'),
              ('My Darling','Pop and similar'),
              ('Music Box','Pop and similar'),
              ('Charmaine','Jazz and similar'),
              ('All Alone','Jazz and similar'),
              ('Iron Man','Seventies'),
              ('Paranoid','Seventies'),
              ('Disorder','Seventies'),
              ('She `s Lost Control','Seventies'),
              ('Battery','Eighties'),
              ('Master of Puppets','Eighties'),
              ('Smooth Criminal','Eighties'),
              ('Speed Demon','Eighties'),
              ('The Passion of Lovers','Eighties'),
              ('Dancing','Eighties'),
              ('My Darling','Newest'),
              ('Music Box','Newest'),
              ('Paparazzi','Newest'),
              ('Poker Face','Newest')
RETURNING *;