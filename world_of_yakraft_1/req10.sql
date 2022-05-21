select creature.id
from creature
join creature_template on gid = creature_template.id and creature_template.level > 10
order by id
