USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       artist_name CHAR(50),
                       album_name CHAR(50),
                       release_date INT(4),
                       sales FLOAT(10),
                       genre CHAR(50),
                       PRIMARY KEY (id)
);

SHOW DATABASES;

-- DESCRIBE TABLE albums;