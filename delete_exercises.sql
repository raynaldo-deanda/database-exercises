SELECT album_name, release_date AS 'Albums released after 1991' FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT genre AS 'Albums released with the genre of disco'FROM albums WHERE genre 'Disco';
DELETE FROM albums WHERE genre 'Disco';


SELECT artist_name as 'Whitney' FROM albums WHERE artist_Name ='Whitney Houston';
DELETE FROM albums WHERE  artist_Name ='Whitney Houston'; --Whitney
