select title
from quest
where (level_min between 8 and 10) and (creature_start = creature_end or gold > 100)
