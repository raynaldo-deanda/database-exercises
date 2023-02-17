USE codeup_test_db;
SELECT artist_name, album__name AS 'all albums in our table' FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT artist_name, album, sales AS 'sales x 10', FROM albums;


SELECT album_name AS 'albums released before 1980' FROM albums WHERE released_date <1980;
UPDATE albums
SET release_date = release_date - 100;
WHERE release_date < 1980;
SELECT artist_name, album, release_date FROM albums;



SELECT artist_name AS 'Michael Jackson' FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums
SET artist_name = 'Peter Jackson'
WHERE artist_name = 'Michael Jackson';
SELECT artist_name FROM albums WHERE artist_name = 'Peter Jackson';