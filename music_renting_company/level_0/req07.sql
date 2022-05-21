delete from album where
    (mod(length(name), 7) = 0) or ((lower(album.name) like '%p%p%')
        and not (lower(album.name) like '%p%p%p%'))
    or (lower(album.name) like '%mm%')
    or ((album.name) like '%&%');
