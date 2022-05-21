select title, creature_template.name
from quest
join creature on creature.id = quest.creature_start
join creature_template on creature.gid = creature_template.id
order by title, creature_template.name
