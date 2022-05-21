create or replace view view_artists as
select name as artist, birth_date as birthdate, count (art_id) as songs from artist 
left join music on artist.id = music.art_id
group by artist, birthdate
order by artist;



create or replace view view_albums as
select name as album, count(title) as songs, duration_to_string(cast (sum(music.duration) as int)) as duration from album
left join music_album on album.id = music_album.alb_id
left join music on music_album.music_id = music.id
group by name, title
order by name;

create or replace view view_songs as
select title as music, name as artist, duration_to_string(cast (sum(music.duration) as int)) as duration from music
left join artist on music.art_id = artist.id
group by title, artist
order by title, artist;
