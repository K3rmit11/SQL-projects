select name
from creature_template
join creature on creature.gid = creature_template.id
join quest on quest.creature_start = quest.creature_end and quest.creature_start = creature.id
group by name
order by name
