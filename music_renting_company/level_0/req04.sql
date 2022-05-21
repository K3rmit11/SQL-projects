insert into music (id, title, art_id, duration) values
    (default, 'Le Petit Pain au Chocolat', (select id from artist where artist.name = 'Joe DASSIN'), 210),
    (default,'Comment lui dire', (select id from artist where artist.name = 'France GALL'), 210),
    (default,E'C\'est ta chance', (select id from artist where artist.name = 'Jean-Jacques GOLDMAN'), 391),
    (default,'Siffler sur la colline', (select id from artist where artist.name = 'Joe DASSIN'), 152);
