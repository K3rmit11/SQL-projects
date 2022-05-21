update character
set level = 15
where name = 'Tilon';
update character
set level = level + 1
where name = 'Kuro';
update character
set max_health = case when (blessed = 1) then ((level + 1) * 10)
            else (level * 10) end
