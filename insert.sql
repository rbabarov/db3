INSERT INTO artist(names,surname)    VALUES('John','Connor');
INSERT INTO artist(names,surname)    VALUES('Lisa','Oreby');
INSERT INTO artist(names,surname)    VALUES('Whihtney','Huston');
INSERT INTO artist(names,surname)    VALUES('Selena','Gomes');
INSERT INTO artist(names,surname)    VALUES('Ariana','Grande');
INSERT INTO artist(names,surname)    VALUES('Billie','Eilish');
INSERT INTO artist(names,surname)    VALUES('Dua','Lipa');
INSERT INTO artist(names,surname)    VALUES('Harry','Styles');

INSERT INTO genre (names)    VALUES('���');
INSERT INTO genre (names)    VALUES('�����');
INSERT INTO genre (names)    VALUES('������');
INSERT INTO genre (names)    VALUES('����');
INSERT INTO genre (names)    VALUES('������');

INSERT INTO albums  (description,years)    VALUES('������ �������',2012);
INSERT INTO albums  (description,years)    VALUES('������ ����',2013);
INSERT INTO albums  (description,years)    VALUES('������ ������',2014);
INSERT INTO albums  (description,years)    VALUES('������ �����',2015);
INSERT INTO albums  (description,years)    VALUES('������ �����',2016);
INSERT INTO albums  (description,years)    VALUES('������ ������',2017);
INSERT INTO albums  (description,years)    VALUES('������ ������',2018);
INSERT INTO albums  (description,years)    VALUES('�������� ������',2019);

INSERT INTO collections  (names,years)    VALUES('������� �������',2012);
INSERT INTO collections  (names,years)    VALUES('������� ����',2013);
INSERT INTO collections  (names,years)    VALUES('������� �������',2014);
INSERT INTO collections  (names,years)    VALUES('������� ������',2015);
INSERT INTO collections  (names,years)    VALUES('������� �����',2016);
INSERT INTO collections  (names,years)    VALUES('������ �������',2017);
INSERT INTO collections  (names,years)    VALUES('������ �������',2018);
INSERT INTO collections  (names,years)    VALUES('�������� �������',2019);

INSERT INTO track  (names,duration,product_id)    VALUES('������ �����',1.36,1);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ����',1.42,2);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ����',1.72,3);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ������',1.44,4);
INSERT INTO track  (names,duration,product_id)    VALUES('������ �������',1.55,5);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ������',1.66,6);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ����',1.77,7);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ����',1.88,8);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ����',1.99,1);
INSERT INTO track  (names,duration,product_id)    VALUES('������ �����',1.12,2);
INSERT INTO track  (names,duration,product_id)    VALUES('������ �������',1.13,3);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ����',1.14,4);
INSERT INTO track  (names,duration,product_id)    VALUES('������ �����',1.15,5);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ����',1.16,6);
INSERT INTO track  (names,duration,product_id)    VALUES('������ ���',1.17,7);
INSERT INTO track  (names,duration,product_id)    VALUES('������ �����',1.18,8);

INSERT INTO track_collections  (track_id ,collection_id)    VALUES(1,1);
INSERT INTO track_collections  (track_id ,collection_id)    VALUES(2,2);
INSERT INTO track_collections  (track_id ,collection_id)    VALUES(3,3);
INSERT INTO track_collections  (track_id ,collection_id)    VALUES(4,4);
INSERT INTO track_collections  (track_id ,collection_id)    VALUES(5,5);
INSERT INTO track_collections  (track_id ,collection_id)    VALUES(6,6);
INSERT INTO track_collections  (track_id ,collection_id)    VALUES(7,7);
INSERT INTO track_collections  (track_id ,collection_id)    VALUES(8,8);

INSERT INTO artist_albums  (artist_id ,albums_id)    VALUES(1,1);
INSERT INTO artist_albums  (artist_id ,albums_id)    VALUES(2,2);
INSERT INTO artist_albums  (artist_id ,albums_id)    VALUES(3,3);
INSERT INTO artist_albums  (artist_id ,albums_id)    VALUES(4,4);
INSERT INTO artist_albums  (artist_id ,albums_id)    VALUES(5,5);
INSERT INTO artist_albums  (artist_id ,albums_id)    VALUES(6,6);
INSERT INTO artist_albums  (artist_id ,albums_id)    VALUES(7,7);
INSERT INTO artist_albums  (artist_id ,albums_id)    VALUES(8,8);

INSERT INTO artist_genre (id_artist ,id_genre)    VALUES(1,1);
INSERT INTO artist_genre (id_artist ,id_genre)    VALUES(2,2);
INSERT INTO artist_genre (id_artist ,id_genre)    VALUES(3,3);
INSERT INTO artist_genre (id_artist ,id_genre)    VALUES(4,4);
INSERT INTO artist_genre (id_artist ,id_genre)    VALUES(5,5);




SELECT * FROM artist;
SELECT * FROM genre;
SELECT * FROM albums;
SELECT * FROM collections;
SELECT * FROM track;
SELECT * FROM track_collections;
SELECT * FROM artist_albums;
SELECT * FROM artist_genre;

