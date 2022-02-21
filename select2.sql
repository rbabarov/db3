--количество исполнителей в каждом жанре
select id_artist, COUNT(id_genre) 
from artist_genre 
group by  id_artist;

--количество треков, вошедших в альбомы 2019-2020 годов
select  count(names) length  
from track  
where product_id  IN 
(select id 
from albums 
where years between 2019 and 2020); 

--средняя продолжительность треков по каждому альбому
select avg(duration)
FROM track  
GROUP BY product_id; 
	
--все исполнители, которые не выпустили альбомы в 2020 году;
select distinct m.names
from artist as m
where m.names not in (
    select distinct m.names
    from artist as m
    left join artist_albums as am on m.id = am.artist_id
    left join albums as a on a.id = am.albums_id
    where a.years = 2020
)
order by m.names;
	
--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct c.names
from collections as c
left join track_collections as ct on c.id = ct.collection_id
left join track as t on t.id = ct.track_id
left join albums as a on a.id = t.product_id
left join artist_albums as am on am.albums_id = a.id
left join artist as m on m.id = am.artist_id
	where m.names like '%%Lisa%%'
order by c.names;
	
--	название альбомов, в которых присутствуют исполнители более 1 жанра;
select description 
	from albums as alb
		left join artist_albums as aa on alb.id = aa.albums_id
		left join artist as ar on ar.id = aa.artist_id
		left join artist_genre as ag on ar.id = ag.id_artist 
		left join genre as g on g.id = ag.id_genre
	group by alb.description 
	having count(distinct g.names) > 1
	order by alb.description;

--наименование треков, которые не входят в сборники;

select t.names
from track as t
left join public.track_collections as ct on t.id = ct.track_id
where ct.track_id is null;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

select m.names, t.duration 
	from track as t
		left join albums as alb on alb.id = t.product_id
		left join artist_albums as aa on aa.albums_id = alb.id
		left join artist as m on m.id = aa.artist_id
	group by m.names, t.duration
	having t.duration = (select min(duration) from track)
	order by m.names;

--название альбомов, содержащих наименьшее количество треков.

select distinct alb.description 
from albums as alb
left join track as t on t.product_id = alb.id
where t.product_id in (
    select product_id
    from track
    group by product_id
    having count(id) = (
        select count(id)
        from track
        group by product_id
        order by count
        limit 1 ))
order by alb.description;
	
