insert into music_album (music_id, alb_id, track) values
    ((select id from music where title = 'Le Petit Pain au Chocolat'),
        (select id from album where name = 'Joe Dassin (Les Champs-Élysées)'), 2),
    ((select id from music where title = 'Comment lui dire'),
        (select id from album where name = 'France Gall'), 1),
    ((select id from music where title = E'C\'est ta chance'),
        (select id from album where name = 'Traces'), 3)
