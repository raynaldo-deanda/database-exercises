USE codeup_test_db;


SELECT artist_name AS 'info' FROM albums WHERE artist_name = 'Pink Floyd';

SELECT release_date AS 'the yeat SGT Pepper eas released' FROM albums WHERE albums_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Nevermind' FROM albums WHERE album_name= 'Rumours';

SELECT album_name 'albums released in the 1990'sFROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT album_name AS 'which albums had less than $20M', sales FROM albums WHERE SALES <20;

SELECT album_name AS 'Rock' FROM albums WHERE genre = 'rock';